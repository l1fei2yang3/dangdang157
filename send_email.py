import os
from django.core.mail import send_mail
os.environ['DJANGO_SETTINGS_MODULE'] = 'DangDang.settings'

if __name__ == '__main__':
    send_mail(
    '11231',
    '312312',
    'li1301899656@sina.com',
    ['li1301899656@sina.com'],
    )