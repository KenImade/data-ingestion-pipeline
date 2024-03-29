FROM python:3.12.2

RUN apt-get install wget
RUN pip install pandas sqlalchemy psycopg2

WORKDIR /app
COPY data_pipeline.py data_pipeline.py

ENTRYPOINT [ "python", "data_pipeline.py" ]