FROM ubuntu:latest

ENV LANG C.UTF-8

RUN apt update \
     && apt-get install -y python3 \
                           python3-pip \
                           python3-pil \
                           python3-numpy \
                           python3-yaml \
                           python3-requests \
                           ffmpeg \
                           libmagic-dev \
                           libwebp-dev \
                           git

RUN pip3 install ehforwarderbot \
             efb-telegram-master \
             efb-wechat-slave \

CMD ["ehforwarderbot"]
