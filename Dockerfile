FROM python:3
RUN pip install flask psycopg2-binary configparser
##RUN python -m pip install psycopg2-binary && pip install flask
RUN mkdir /app
COPY web.py /app
COPY web.conf /app
WORKDIR /app

CMD ["python","web.py"]
