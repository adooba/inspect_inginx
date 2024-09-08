FROM python:3.9
LABEL authors="alex"
RUN apt-get update
WORKDIR /opt/app
COPY requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 2000
ENTRYPOINT ["uvicorn", "run:app", "--host", "0.0.0.0", "--port", "2000"]