FROM python
RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN pip install flask
COPY index2.html /home/myapp/templates/
COPY app.py /home/myapp
EXPOSE 8080
CMD python3 /home/myapp/app.py

