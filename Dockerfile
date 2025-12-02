FROM python:3.11-slim

WORKDIR /app

# First only requirements copy cheddam (Docker cache help avvadaniki)
COPY requirements.txt .

RUN pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Tarvata remaining project files copy
COPY . /app/

EXPOSE 8000

CMD [ "python", "./app.py"]