import os

from .base import *

SECRET_KEY = os.getenv("DJANGO_SECRET_KEY")

ALLOWED_HOSTS = [
    "localhost",
    "223.130.139.108",
]

CSRF_TRUSTED_ORIGINS = [
    "localhost.8000",
    "223.130.139.108:8000",
]
