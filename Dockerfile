FROM python:3.7-stretch

RUN su - \
 && apt-get --assume-yes update \
 && apt-get --assume-yes upgrade \
 && apt-get --assume-yes install sudo \
 && apt-get --assume-yes install build-essential lazarus subversion \
 && ln -sfv /usr/lib/x86_64-linux-gnu/libstdc++.so.6 /usr/lib/x86_64-linux-gnu/libstdc++.so \
 && ln -sfv /lib/x86_64-linux-gnu/libgcc_s.so.1 /lib/x86_64-linux-gnu/libgcc_s.so

ENV NATS_HOST nats
ENV NATS_PORT 4222
ENV NATS_SUBJECT opendss.control

WORKDIR opendss_module

ADD CommandProcessor ./CommandProcessor
ADD NATSClient ./NATSClient
ADD OpenDSS ./OpenDSS
ADD linux-dss ./linux-dss
COPY app.py .
COPY requirements.txt .

RUN pip install -r requirements.txt

WORKDIR linux-dss
RUN make

CMD ["python", "main.py"]

