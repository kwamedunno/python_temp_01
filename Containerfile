FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN python_temp_01 create-db
RUN python_temp_01 populate-db
RUN python_temp_01 add-user -u admin -p admin
EXPOSE 5000
CMD ["python_temp_01", "run"]
