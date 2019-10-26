# The official Elasticsearch Docker image
FROM docker.elastic.co/elasticsearch/elasticsearch:7.4.1@sha256:88c2ee30115f378b8f7e66662ec26bca0c8778c69096bee6b161128ce833585f


# Copy our config file over
COPY --chown=1000:0 config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

# Allow Elasticsearch to create `elasticsearch.keystore`
# to circumvent https://github.com/elastic/ansible-elasticsearch/issues/430
RUN chmod g+ws /usr/share/elasticsearch/config

USER 1000:0
