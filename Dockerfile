# The official Elasticsearch Docker image
FROM docker.elastic.co/elasticsearch/elasticsearch:7.8.0@sha256:161bc8c7054c622b057324618a2e8bc49ae703e64901b141a16d9c8bdd3b82f9

# Copy our config file over
COPY --chown=1000:0 config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

# Allow Elasticsearch to create `elasticsearch.keystore`
# to circumvent https://github.com/elastic/ansible-elasticsearch/issues/430
RUN chmod g+ws /usr/share/elasticsearch/config

USER 1000:0
