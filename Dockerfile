FROM ubuntu

WORKDIR /opt/facebook

RUN apt-get-update && \
    apt-get-install -yq build-essential make git libsqlite3-dev sqlite3

COPY ./opt/facebooc

RUN make all

EXPOSE 16000

CMD "bin/facebook"
