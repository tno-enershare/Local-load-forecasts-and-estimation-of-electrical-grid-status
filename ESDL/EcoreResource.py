import os
from io import BytesIO
from pathlib import Path
from urllib.parse import quote
from .xmlresource import XMLResource
from pyecore.resources import ResourceSet, URI
import esdl
ENCODING = 'UTF-8'


class EcoreResource:
    def __init__(self, resource_name):
        # Create a resourceSet that hold the contents of the ecore model and the instances we use/create
        self.rset = ResourceSet()

        self.rset.metamodel_registry[esdl.nsURI] = esdl

        # Assign files with the .busdl extension to the XMLResource instead of default XMI
        self.rset.resource_factory['esdl'] = lambda uri: XMLResource(uri)  # we register the factory for '.esdl' extension and XML serialization

        # Load the ESDL file
        resource = os.path.join(Path(__file__).parent.parent, resource_name)
        self.resource = self.rset.get_resource(URI(resource))

        # Get the Project as root object from the resource
        self.resource_contents = self.resource.contents[0]

    def get_resource_contents(self):
        return self.resource_contents

    def get_resource(self):
        return self.resource

    def to_file(self, filename):
        uri = URI(filename)
        self.resource.save(uri)

    def to_string(self):
        # to use strings as resources, we simulate a string as being a URI
        uri = StringURI('to_string.esdl')
        self.resource.save(uri)
        # return the string
        return uri.getvalue()

    def to_url_encoded_string(self):
        return quote(self.to_string(), encoding=ENCODING)


class StringURI(URI):
    def __init__(self, uri, text=None):
        super(StringURI, self).__init__(uri)
        if text is not None:
            self.__stream = BytesIO(text.encode(ENCODING))

    def getvalue(self):
        readbytes = self.__stream.getvalue()
        # somehow stringIO does not work, so we use BytesIO
        string = readbytes.decode(ENCODING)
        return string

    def create_instream(self):
        return self.__stream

    def create_outstream(self):
        self.__stream = BytesIO()
        return self.__stream

    def get_stream(self):
        return self.__stream