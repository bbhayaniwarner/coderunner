#!/bin/bash
python manage.py collectstatic --noinput
gunicorn --workers 2 myproject.wsgi:application --bind 0.0.0.0:8000