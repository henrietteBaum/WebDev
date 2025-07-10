# WordPress 1 (wp1)

## Adresse
[http://wp1.localhost](http://wp1.localhost)

## Zugangsdaten
- **Admin-Login:** `admin`
- **Passwort:** `examplepass` *(anpassen!)*

## Datenbank (MariaDB)
- Host: `db_wp1`
- Datenbank: `wp1_db`
- Benutzer: `wp`
- Passwort: `examplepass` *(anpsssen!)*

## Docker-Setup
- Traefik-Router: `Host("wp1.localhost")`
- Traefik-Entrypoint: `wp1.entrypoints=web" ` 

- Volumes:
  - `wp1_data` → `/var/www/html`
  - `db_wp1_data` → `/var/lib/mysql`
