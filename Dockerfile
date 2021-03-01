# The official Elasticsearch Docker image
FROM docker.elastic.co/elasticsearch/elasticsearch:6.8.8@sha256:0e0fd27c4e133399d8c5419141915cbf04966aa808427f21bd316fb7c5bed61f

# Copy our config file over
COPY --chown=1000:0 config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

# Allow Elasticsearch to create `elasticsearch.keystore`
# to circumvent https://github.com/elastic/ansible-elasticsearch/issues/430
RUN chmod g+ws /usr/share/elasticsearch/config

USER 1000:0
