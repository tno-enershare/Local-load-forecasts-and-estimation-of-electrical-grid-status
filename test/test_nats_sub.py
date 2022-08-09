import asyncio

from NATSClient.nats_subscriber import NATSSubscriberClient

if __name__ == '__main__':
    host = "localhost"
    port = 4222
    subject = "opendss.control"

    loop = asyncio.new_event_loop()
    ns = NATSSubscriberClient(loop, host, port, subject)





