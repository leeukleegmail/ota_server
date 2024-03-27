FROM python:alpine3.19

ENV TZ="Europe/Amsterdam"

RUN pip install --upgrade pip

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /data
VOLUME /data

EXPOSE 8080

WORKDIR /data

CMD ["python", "-m" , "http.server", "8080"]
