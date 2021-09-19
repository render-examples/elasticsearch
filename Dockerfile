# The official Elasticsearch Docker image
FROM docker.elastic.co/elasticsearch/elasticsearch:7.14.1@sha256:2dcd2f31e246a8b13995ba24922da2edc3d88e65532ff301d0b92cb1be358af5

# Copy our config file over
COPY --chown=1000:0 config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

# Allow Elasticsearch to create `elasticsearch.keystore`
# to circumvent https://github.com/elastic/ansible-elasticsearch/issues/430
RUN chmod g+ws /usr/share/elasticsearch/config

USER 1000:0
