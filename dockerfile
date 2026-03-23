FROM python:3.12
WORKDIR /myapp
COPY . .
CMD ["python", "app.py"]