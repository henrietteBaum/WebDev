# Joomla 1

## Adresse
[http://joomla1.localhost](http://joomla1.localhost)

## Admin-Login (während Setup)
- Benutzername: `joomla`
- Passwort: `joomla@secured`

## Datenbank (MySQL 8)
- Host: `db_joomla1`
- Benutzer: `joomla`
- Passwort: `examplepass`
- Datenbank: `joomla_db`

## Docker-Setup
- Traefik-Router: `Host("joomla1.localhost")`
- Traefik-Entrypoint: ` joomla1.entrypoints=web` 
- Volumes:
  - `joomla1_data` → `/var/www/html`
  - `db_joomla1-data` → `/var/lib/mysql`
