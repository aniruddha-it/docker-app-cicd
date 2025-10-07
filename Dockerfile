FROM python:latest

WORKDIR /myapp

COPY . .

RUN pip install django

EXPOSE 8001

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8001"]
