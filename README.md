# README

This is a template repository for running Elasticsearch on Render.

* It uses [Render Disks](https://render.com/docs/disks) for persistent index storage.

* Elasticsearch runs in your [Render private network](https://render.com/docs/private-services) so it isn't exposed to the public Internet.

* You can [configure Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/settings.html) using `config/elasticsearch.yml` in your fork of this repository. Render will automatically redeploy Elasticsearch when you push your changes.

## Deployment

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

For details and customization see https://render.com/docs/deploy-elasticsearch.
