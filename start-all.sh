#!/bin/bash

echo "Starte alle WebDev-Dienste ..."

docker compose -f traefik/compose.yaml up -d
docker compose -f landingpage/compose.yaml up -d
docker compose -f wp1/compose.yaml up -d
docker compose -f wp2/compose.yaml up -d 
docker compose -f html/compose.yaml up -d
docker compose -f drupal1/compose.yaml up -d
docker compose -f joomla1/compose.yaml up -d
docker compose -f pma/compose.yaml up -d

echo "Alle Container wurden gestartet."
