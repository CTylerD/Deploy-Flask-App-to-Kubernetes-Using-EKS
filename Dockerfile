# Comment
FROM python:stretch

COPY . /main
WORKDIR /main

RUN pip install --upgrade pip
RUN pip install -r requirements .txt

EXPOSE 80:8080


ENTRYPOINT ["python", "-b", ":8080", "main.py"]