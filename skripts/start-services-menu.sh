#!/bin/bash

# Liste der verfügbaren Container-Services
services=(
  "Traefik Dashboard"
  "phpMyAdmin"
  "WordPress 1"
  "WordPress 2"
  "Drupal 1"
  "Joomla 1"
  "Static Website"
  "Alle starten"
  "Beenden"
)

# Mapping von Anzeigenamen zu Compose-Service-Namen
service_map=(
  "dashboard"
  "phpmyadmin"
  "wp1"
  "wp2"
  "drupal1"
  "joomla1"
  "site"
)

# Menü anzeigen
PS3=$'\nWähle einen Service zum Starten: '
select opt in "${services[@]}"; do
  case $REPLY in
    1|2|3|4|5|6|7)
      service="${service_map[$((REPLY-1))]}"
      echo "▶ Starte $opt ($service)..."
      docker compose up -d "$service"
      break
      ;;
    8)
      echo "▶ Starte alle Container..."
      docker compose up -d
      break
      ;;
    9)
      echo "Beendet."
      break
      ;;
    *)
      echo "Ungültige Eingabe."
      ;;
  esac
done
