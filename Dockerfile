FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /
COPY requirements.txt /
RUN pip install -r requirements.txt
COPY . /
RUN python manage.py makemigrations
RUN python manage.py migrate