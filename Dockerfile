FROM python:3.8.2-buster

RUN pip3 install numpy scipy matplotlib tensorflow

COPY . /app
