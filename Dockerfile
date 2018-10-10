FROM ubuntu:18.04

RUN apt-get -qq update && apt-get install -qq -y clamav-daemon && rm -r /var/lib/apt/lists/*

RUN freshclam
RUN ln -sf /dev/stdout /var/log/clamav/clamav.log

CMD ["clamd"]
