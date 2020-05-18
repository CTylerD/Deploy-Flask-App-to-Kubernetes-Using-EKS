# Comment
FROM python:stretch

COPY . /main
WORKDIR /main

RUN pip install --upgrade pip
RUN pip install -r requirements .txt


ENTRYPOINT ["python", "-b", ":8080", "main.py"]