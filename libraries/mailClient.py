__version__ = '1.0.0'

from random import random


class MailClient:
    ROBOT_LIBRARY_VERSION = __version__
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'


    def create_inbox(self, length):
        domains = ["yopmail.com"]
        inbox = self.get_random_name(length) + '@' + random.choice(domains)
        return inbox
