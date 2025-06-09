FROM python:3.10-slim-buster

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y awscli && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt

ENV MLFLOW_TRACKING_URI=https://dagshub.com/akshat-0921/security.mlflow

CMD ["python", "app.py"]
