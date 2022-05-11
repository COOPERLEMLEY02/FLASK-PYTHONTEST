# Dockerfile, Image, Container

FROM python:3.9.5

RUN apt-get -y update

RUN pip install requests Flask

RUN mkdir -p /app/template
WORKDIR /app

ADD app.py .
ADD template /app/template

#Install the dependencies
RUN pip install -r /app/template/requirements.txt

#Expose the required port
EXPOSE 5000

CMD [ "python", "/app/app.py"]
