FROM docker.elastic.co/logstash/logstash-oss:9.0.0

USER root

RUN mkdir /logs && chown -R logstash:logstash /logs

USER logstash

COPY input.json /input.json

COPY pipeline.conf /usr/share/logstash/pipeline/logstash.conf
