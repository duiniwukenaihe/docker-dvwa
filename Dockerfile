FROM harbor.layame.com/devlop/abc:7

MAINTAINER Tanvir Ahmed (Twitter:@tahmed111)

ENV VERSION 1.9

RUN rm -rf /app && \
    apt-get update && \
    apt-get install -y wget php5-gd && \
    rm -rf /var/lib/apt/lists/*

COPY conf/* /tmp/


EXPOSE 80 3306

CMD ["/run.sh"]
