FROM python:3
ENV PYTHONUNBUFFERED 1

# Add the working directory
RUN mkdir /opt/django-assets
WORKDIR /opt/django-assets

# Requirement file creation
ADD requirements.txt /opt/django-assets
RUN pip install -r requirements.txt

# Add every project files in the container
ADD . /opt/django-assets
