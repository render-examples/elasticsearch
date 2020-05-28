# The official Elasticsearch Docker image
FROM docker.elastic.co/elasticsearch/elasticsearch:7.7.0@sha256:b4ec018c974d23a796b1d17ddec3863e4e6deff76d25f58027c45b7a697089dc

# Copy our config file over
COPY --chown=1000:0 config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

# Allow Elasticsearch to create `elasticsearch.keystore`
# to circumvent https://github.com/elastic/ansible-elasticsearch/issues/430
RUN chmod g+ws /usr/share/elasticsearch/config

USER 1000:0
