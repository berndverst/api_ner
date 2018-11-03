FROM python:3.6-slim

RUN pip install scipy numpy tensorflow flask gunicorn flask_cors

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

CMD ["python", "main.py"]
