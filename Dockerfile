FROM mysql:5.7.28

RUN apt update && apt  -y  install telnet  iproute2  procps

COPY *.sql   *.sh   /mysql-initsql/

CMD  bash -x  /mysql-initsql/start.sh

