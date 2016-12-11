FROM pstuart/webpack

RUN mkdir /app
WORKDIR /app

COPY *.html /app/
COPY *.js /app/
COPY *.css /app/

RUN webpack

EXPOSE 8088

#ENTRYPOINT /usr/bin/http-server 
#CMD /usr/bin/http-server -a localhost -p 8088
#CMD ["-a", "localhost", "-p", "8088"]
ENTRYPOINT ["/usr/bin/http-server", "-a", "0.0.0.0", "-p", "8088"]
