# WordPress 1 (wp1)

## Adresse
[http://wp2.localhost](http://wp2.localhost)

## Zugangsdaten
- **Admin-Login:** `admin`
- **Passwort:** `examplepass` *(anpassen!)*

## Datenbank (MariaDB)
- Host: `db_wp2`
- Datenbank: `wp2_db`
- Benutzer: `wp`
- Passwort: `examplepass` *(anpsssen!)*

## Docker-Setup
- Traefik-Router: `Host("wp2.localhost")`
- Traefik-Entrypoint: `wp2.entrypoints=web" ` 

- Volumes:
  - `wp2_data` → `/var/www/html`
  - `db_wp2_data` → `/var/lib/mysql`
