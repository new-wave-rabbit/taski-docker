#!/bin/bash
docker_compose_file=docker-compose.production.yml

docker compose -f $docker_compose_file up
docker compose -f $docker_compose_file exec backend python manage.py collectstatic
docker compose -f $docker_compose_file exec backend cp -r /app/collected_static/. /backend_static/static/