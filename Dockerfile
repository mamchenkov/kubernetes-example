FROM bash:4.4

WORKDIR /

COPY . .

CMD ["/workers/date.sh"]
