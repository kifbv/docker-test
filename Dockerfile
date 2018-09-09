#FROM ubuntu:18.04
#
#RUN apt-get update
#RUN apt-get install -y python
#RUN apt-get install -y python-pip
#RUN apt-get clean all
#
#RUN pip install flask
#
#ADD hello.py /tmp/hello.py
#
#EXPOSE 5000
#
#CMD ["python", "/tmp/hello.py"]
#FROM ubuntu:18.04
#
#RUN apt-get update && apt-get install -y \
#    python \
#    python-pip
#
#RUN pip install flask
#
#COPY hello.py /tmp/hello.py
#
#EXPOSE 5000
#
#CMD ["python", "/tmp/hello.py"]
FROM python:2-alpine

RUN pip install flask

COPY hello.py /tmp/hello.py

EXPOSE 5000

CMD ["python", "/tmp/hello.py"]


