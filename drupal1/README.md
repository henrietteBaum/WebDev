# Drupal 1

## Adresse
[http://drupal1.localhost](http://drupal1.localhost)

## Zugang (wird bei Setup vergeben)

## Datenbank (PostgreSQL)
- Host: `postgres`
- Benutzer: `postgres`
- Passwort: `example`
- Port: `5432` (intern)

## Docker-Setup
- Traefik-Router: `Host("drupal1.localhost")`
- Volumes:
  - `drupal1-sites`, `modules`, `themes`, `profiles`
