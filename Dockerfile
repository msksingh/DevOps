FROM python:3.9
WORKDIR /app
COPY . .
RUN pip install gunicorn
RUN pip install -r requirements.txt
EXPOSE 80
CMD ["gunicorn", "--bind", ":80", "--workers", "1", "--threads", "8", "main:app"]
