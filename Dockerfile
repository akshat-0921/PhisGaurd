FROM python:4.7-slim-buster

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install dependencies
RUN apt update -y && apt install awscli -y
RUN apt-get update && pip install --no-cache-dir -r requirements.txt

# Set environment variables (these will be overridden at runtime)
ENV MLFLOW_TRACKING_URI=https://dagshub.com/akshat-0921/security.mlflow

# Run the app
CMD ["python", "app.py"]
