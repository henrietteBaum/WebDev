#!/bin/bash

# Liste der Services mit Anzeige-Namen, Compose-Servicenamen und URL
declare -A services=(
  ["Traefik Dashboard"]="dashboard http://localhost:8080/dashboard"
  ["phpMyAdmin"]="phpmyadmin http://pma.localhost"
  ["WordPress 1"]="wp1 http://wp1.localhost"
  ["WordPress 2"]="wp2 http://wp2.localhost"
  ["Drupal 1"]="drupal1 http://drupal1.localhost"
  ["Joomla 1"]="joomla1 http://joomla1.localhost"
  ["Static Website"]="site http://site.localhost"
)

echo "Wähle einen Service zum Starten und Öffnen:"
select opt in "${!services[@]}" "Alle starten" "Beenden"; do
  case "$opt" in
    "Alle starten")
      echo "▶ Starte alle Container..."
      docker compose up -d
      break
      ;;
    "Beenden")
      echo "Beendet."
      break
      ;;
    *)
      if [[ -n "${services[$opt]}" ]]; then
        read -r service url <<< "${services[$opt]}"
        echo "▶ Starte $opt ($service)..."
        docker compose up -d "$service"

        # Warten, damit der Service Zeit hat, hochzufahren (optional, 3 Sek.)
        sleep 3

        # Browser öffnen (Linux)
        if command -v xdg-open > /dev/null; then
          echo "Öffne $url im Standardbrowser..."
          xdg-open "$url"
        else
          echo "'xdg-open' nicht gefunden. Bitte manuell öffnen: $url"
        fi
      else
        echo "Ungültige Auswahl."
      fi
      ;;
  esac
done
