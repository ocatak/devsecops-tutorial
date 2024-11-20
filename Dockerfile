FROM python:3.9.5
LABEL maintainer "ozgur catak <f.ozgur.catak@gmail.com>"
ADD . /app
WORKDIR /app
RUN apt-get update
RUN apt-get update && apt-get -y upgrade python3-pip
RUN #/usr/local/bin/python -m pip install --upgrade pip
RUN pip3 install Flask
RUN echo "a" #pip3 install Flask markupsafe==1.1.1 Werkzeug==1.0.1
RUN echo "a" #pip3 install requests
