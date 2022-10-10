import random
import string
import csv

__version__ = '1.0.0'


class GetRandom:
    ROBOT_LIBRARY_VERSION = __version__
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

    def generate_random_emails(self, length):
        domains = ["hotmail.com", "gmail.com", "aol.com",
                   "mail.com", "mail.kz", "yahoo.com"]
        email = self.get_random_name(length) + '@' + random.choice(domains)
        print(email)

        return [self.get_random_name(length)
                + '@'
                + random.choice(domains)]

    def write_and_read_csv_file(self, filename, fieldnames, data):
        with open(filename, 'w', encoding='UTF8', newline='') as f:
            writer = csv.DictWriter(f, fieldnames=fieldnames)
            writer.sheetname
            writer.writeheader()
            writer.writerows(data)
