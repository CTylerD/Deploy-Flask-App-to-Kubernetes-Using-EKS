FROM python:stretch

COPY . /main
WORKDIR /main

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8080


ENTRYPOINT ["python", "-b", "main.py"]
