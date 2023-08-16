import os

from base import *

SECRET_KEY = os.getenv("DJANGO_SECRET_KEY")

DEBUG = True

ALLOWED_HOSTS = [
    "lion-db-staging-18975816-75c69b2d58f5.kr.lb.naverncp.com",
]

CSRF_TRUSTED_ORIGINS = [
    "http://localhost:8888",
    "http://lion-db-staging-18975816-75c69b2d58f5.kr.lb.naverncp.com",
]