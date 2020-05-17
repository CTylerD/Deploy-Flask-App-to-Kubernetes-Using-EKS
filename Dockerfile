# Comment
FROM python:stretch

COPY . /main
WORKDIR /main

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install jwt

EXPOSE 80:8080


ENTRYPOINT ["python", "main.py"]