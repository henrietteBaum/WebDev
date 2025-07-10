# phpMyAdmin

## Adresse
[http://pma.localhost](http://pma.localhost)

## Zugang
- Mehrere Datenbank-Hosts möglich: `db_wp1`, `db_joomla1`, `postgres`, etc.
- Root-Login möglich mit `MYSQL_ROOT_PASSWORD`
- `PMA_ARBITRARY=1` erlaubt freie Eingabe des Hostnamens (ohne diese Angabe wird bei der Anmeldung kein Eingabefeld für den Server angeboten)

## Docker-Setup
- Traefik-Router: `Host("pma.localhost")`
