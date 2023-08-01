#!/bin/bash

# 실행 경로 진입
cd /home/lion2/DevOps/sampleapp

# Execute gunicorn
gunicorn sampleapp.wsgi:application --config sampleapp/gunicorn_config.py