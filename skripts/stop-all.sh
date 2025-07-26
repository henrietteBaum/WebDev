#!/bin/bash

echo "Stoppe alle WebDev-Dienste ..."

docker compose -f joomla1/compose.yaml down
docker compose -f drupal1/compose.yaml down
docker compose -f wp1/compose.yaml down
docker compose -f wp2/compose.yaml down
docker compose -f html/compose.yaml down
docker compose -f landingpage/compose.yaml down
docker compose -f pma/compose.yaml down
docker compose -f traefik/compose.yaml down

echo "Alle Container wurden gestoppt."
