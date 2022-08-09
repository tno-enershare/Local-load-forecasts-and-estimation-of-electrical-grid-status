from pynats import NATSClient


class NATSPublisherClient:
    def __init__(self, host, port):
        print("Creating NATS publisher")
        self.host = host
        self.port = port
        self.init()
        # Connect to server
        print('Done Creating Publisher!')

    def init(self):
        self.nc = NATSClient(url='nats://{}:{}'.format(self.host, self.port))
        self.nc.connect()

    def publish(self, subject, message):
        self.nc.publish(subject=subject, payload=message)

    def stop(self):
        self.nc.close()
