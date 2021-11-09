import socket
import sctp
from robot.api import logger


class SctpClient(object):

    def __init__(self):
        self.sk = sctp.sctpsocket_tcp(socket.AF_INET)
        self.sk.events.clear()

    def connect_to_server(self, ip_address, port):
        self.sk.connect((ip_address, int(port)))
        logger.console("Connected to server!")

    def send_message(self, message):
        logger.console("Preparing to send message to server")
        self.sk.sctp_send(message + "\n")
        logger.console("Message sent: " + message)

    def close_connection(self):
        self.sk.close()
