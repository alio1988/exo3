FROM python:3.10.5-alpine3.16

ADD app.py /

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "-u", "app.py"]
