FROM python:3.7.3-slim
COPY requirements.txt /
RUN pip3 install -r /requirements.txt
COPY . /app
WORKDIR /app

CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]