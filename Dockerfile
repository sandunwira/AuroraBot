FROM python:3.8-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5005

CMD ["rasa", "run", "--enable-api", "--cors", "\"*\"", "-m", "models/20240125-004958-exhaustive-title.tar.gz", "--port", "5005"]