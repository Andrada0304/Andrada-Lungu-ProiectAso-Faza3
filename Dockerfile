#FROM python:3.8.6-slim-buster
#
#WORKDIR /project
#
#COPY requirements.txt requirements.txt
#RUN pip3 install -r requirements.txt
#
#COPY . .
#
#CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000"]

FROM python:3.8.6-slim-buster
ENV PYTHONUNBUFFERED=1
WORKDIR /django
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt