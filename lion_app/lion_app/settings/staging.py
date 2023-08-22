import os

from .base import *

SECRET_KEY = os.getenv("DJANGO_SECRET_KEY")

DEBUG = False

ALLOWED_HOSTS = [
    "223.130.139.108:8000",
    "lion-db-staging-18975816-75c69b2d58f5.kr.lb.naverncp.com",	

]

CSRF_TRUSTED_ORIGINS = [
    "223.130.139.108:8000",    
    # "http://localhost:8888",
    "http://lion-db-staging-18975816-75c69b2d58f5.kr.lb.naverncp.com",
]
