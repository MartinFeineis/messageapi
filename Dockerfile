FROM alpine:latest  
LABEL name=messageapi
WORKDIR /var/www/
COPY requirements.txt .
COPY entrypoint.sh .
COPY mysite .
COPY uwsgi.ini .
RUN chmod +x entrypoint.sh
RUN ./entrypoint.sh
EXPOSE 8000

#CMD ["/usr/bin/uwsgi", "--ini", "/var/www/uwsgi.ini"]
