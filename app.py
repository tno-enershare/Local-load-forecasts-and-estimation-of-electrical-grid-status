import os

from CommandProcessor.command_processor import CommandProcessor
from NATSClient.nats_subscriber import NATSSubscriberClient

if __name__ == '__main__':

    # Create Command Processor module
    cmd_processor = CommandProcessor()

    # Read environment variables for NATS parameters
    host = os.getenv('NATS_HOST', 'localhost')
    port = os.getenv('NATS_PORT', 4222)
    subject = os.getenv('NATS_SUBJECT', 'opendss.control')

    # Create the NATS Subscriber
    ns = NATSSubscriberClient(host, port, subject, 'NATS', cmd_processor)

    #First run docker-compose, then app.py then test_nats_pub