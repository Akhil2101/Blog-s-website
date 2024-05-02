FROM python:3.8-slim

# Install system dependencies
RUN apt-get update \
    && apt-get install -y default-libmysqlclient-dev gcc \
    && apt-get install -y pkg-config

COPY ./Blog-s-website .
RUN pip install -r requirements.txt


CMD ["gunicorn", "-w", "4", "--bind", "0.0.0.0:5000", "wsgi:app", "&"]
