FROM ubuntu

WORKDIR /opt/facebook

RUN apt-get-update && \
    apt-get-install -yq build-essential make git libsqlite3-dev sqlite3

COPY . /opt/facebooc

RUN make all

EXPOSE 16000

CMD "bin/facebook"


#steps to run 
#docker build -t ppk/facebooc:v1 .
#docker image ls
#docker image history ppk/facebooc:v1
#lunch container
#docker run -it -P ppk/facebooc:v1
#docker image push ppk/facebooc:v1
