# Start-Skript für die Container



---

### **Bash-Skript: `start-service.sh`**

```bash
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
```

---

### So verwendest du das Skript

1. Speichere den Code z. B. als `start-service.sh` im Projektordner.

2. Mach es ausführbar:

   ```bash
   chmod +x start-service.sh
   ```

3. Starte es im Terminal:

   ```bash
   ./start-service.sh
   ```

---

### Voraussetzung

* Du verwendest `docker-compose.yml` mit passenden Service-Namen (wie `wp1`, `wp2`, `drupal1`, …).
* Die Service-Namen müssen mit dem übereinstimmen, was im YAML steht, z. B.:

  ```yaml
  services:
    wp1:
      image: wordpress
      ...
  ```

---

Das Skript lässt sich noch erweitern z.B. mit:

* Container stoppen,
* Status anzeigen,
* Links direkt öffnen (z. B. `xdg-open http://wp1.localhost`).


