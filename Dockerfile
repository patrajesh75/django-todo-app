
FROM python:3.12.3-alpine


WORKDIR /app



COPY requirements.txt .

RUN pip3 install --progress-bar off --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
