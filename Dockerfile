FROM python:3.10.12-slim-bullseye

RUN apt-get -y update && apt-get -y upgrade

ENV DBT_DIR /dbt_tutorial_project
WORKDIR $DBT_DIR

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY dbt_tutorial ./dbt_tutorial