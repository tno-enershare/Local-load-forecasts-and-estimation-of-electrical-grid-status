import json


class NATSMessage:

    def __init__(self, cmd):
        self.cmd = cmd
        self.params = {}

    def add_params(self, key, value):
        self.params[key] = value

    def serialize(self):
        return json.dumps(self, default=lambda o: o.__dict__, sort_keys=True)

    def deserialize_as_dict(self):
        return json.loads(self.serialize())

    @staticmethod
    def deserialize_as_message(json_message):
        msg = json.loads(json_message)
        nats = NATSMessage(msg['cmd'])
        if 'params' in msg:
            for p in msg['params']:
                nats.add_params(p, msg['params'][p])

        return nats
