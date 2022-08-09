import json

from pynats import NATSClient

from NATSClient.nats_message import NATSMessage


class NATSSubscriberClient:

    # Message handler
    def message_handler(self, msg):
        sub = msg.subject
        data = msg.payload.decode()
        print("Received a message on '{}': {}...".format(sub, data))

        # Process command here
        command_message = self.deserializer(data)
        self.cmd_processor.process_command(command_message)

    def create(self):
        # Connect to server
        self.nc = NATSClient(url='nats://{}:{}'.format(self.host, self.port))
        self.nc.connect()

    def subscribe(self):
        print('NATS subscriber created! Waiting for messages...')
        # Simple publisher and async subscriber via coroutine.
        self.sub = self.nc.subscribe(self.subject, callback=self.message_handler)
        self.nc.wait()

    def stop(self):
        self.nc.unsubscribe(self.sub)

    def get_client(self):
        return self.nc

    def __init__(self, host, port, subject, mode, cmd_processor):
        print("Creating NATS subscriber for subject {sub}".format(sub=subject))
        self.host = host
        self.port = port
        self.subject = subject
        self.cmd_processor = cmd_processor
        self.cmd_processor.set_subscriber_client(self)
        if mode == 'JSON':
            self.deserializer = json.loads
        else:
            self.deserializer = NATSMessage.deserialize_as_message

        self.create()
        self.subscribe()
        print('Done Creating Subscriber!')
