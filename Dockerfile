FROM python:3.9-rc-buster
RUN mkdir -p /root/app
WORKDIR /root/app
COPY . .
CMD ["/usr/local/bin/python", "-m", "http.server", "9000"]
