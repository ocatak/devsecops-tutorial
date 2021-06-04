FROM ubuntu:16.04
LABEL maintainer â"ozgur catak <f.ozgur.catak@gmail.com>"
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r requirements.txt
COPY . /app
ENTRYPOINT ["python3.5"]
CMD ["main.py"]
