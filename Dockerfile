FROM python:3.9-slim-buster

WORKDIR /app
COPY ./app /app/
COPY ./pyproject.toml ./poetry.lock /app/

RUN pip install --upgrade pip
RUN pip install poetry

RUN poetry config virtualenvs.create false
RUN poetry install
