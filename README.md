# Homelab

This repository contains the configuration of my homelab, automated with Ansible.

## Services

| Name                | Access       | IAM            | Groups |
| ------------------- | ------------ | -------------- | ------ |
| 2fauth              | local 🏠     | forwarded-auth |        |
| actual-budget       | local 🏠     | internal       |        |
| adguard-home        | local 🏠     | internal       |        |
| airsonic-refix      | local 🏠     | forwarded-auth |        |
| audiobookshelf      | public 🌍    | internal       |        |
| authelia            | public 🌍    | auth provider  |        |
| bazarr              | local 🏠     | forwarded-auth |        |
| beets               | local 🏠     | none           |        |
| beszel              | local 🏠     | oauth          |        |
| ddns                | local 🏠     | none           |        |
| deemix              | local 🏠     | forwarded-auth |        |
| deezer-downloader   | local 🏠     | forwarded-auth |        |
| filebrowser         | local 🏠     | forwarded-auth |        |
| hibiscus-server     | local 🏠     | internal       |        |
| hibiscus-actual     | local 🏠     | none           |        |
| homeassistant       | local 🏠     | internal       |        |
| jdownloader2        | local 🏠     | forwarded-auth |        |
| jellyfin            | public 🌍    | internal       |        |
| lldap               | local 🏠     | internal       |        |
| navidrome           | local 🏠     | forwarded-auth |        |
| nextcloud           | public 🌍    | internal       |        |
| nextcloud-collabora | public 🌍    | none           |        |
| open-webui          | local 🏠     | oauth          |        |
| packlist            | local 🏠     | internal       |        |
| paperless-ngx       | local 🏠     | forwarded-auth |        |
| photoprism          | public 🌍    | internal       |        |
| portainer           | local 🏠     | oauth          |        |
| prowlarr            | local 🏠     | forwarded-auth |        |
| radarr              | local 🏠     | forwarded-auth |        |
| redlib              | local 🏠     | none           |        |
| rest-server         | tailscale 🔐 | none           |        |
| sabnzbd             | local 🏠     | forwarded-auth |        |
| scanservjs          | local 🏠     | none           |        |
| scrutiny            | local 🏠     | none           |        |
| searxng             | local 🏠     | none           |        |
| sonarr              | local 🏠     | forwarded-auth |        |
| speedtest           | local 🏠     | none           |        |
| stirling-pdf        | local 🏠     | none           |        |
| syncthing           | local 🏠     | internal       |        |
| tandoor-recipes     | public 🌍    | internal       |        |
| traefik             | local 🏠     | forwarded-auth |        |
| transmission        | local 🏠     | forwarded-auth |        |
| uptime-kuma         | local 🏠     | internal       |        |
| vikunja             | public 🌍    | internal       |        |
| webtop              | local 🏠     | forwarded-auth |        |

## Prerequisites

Install ansible and the dependencies:

```
pipx install ansible

ansible-galaxy install -r requirements.yml
```

## Apps

### Paperless

#### Restore

Download restic binary and use env file from `/media/SSD/appdata/resticker/.env` to mount the repository. Restore the `paperless/media` directory to `/media/SSD/appdata/paperless-ngx/app/media`.

Then start only the postgres container and connect via `psql` to create the `paperless` schema:

```
psql -U paperless
CREATE SCHEMA paperless;
```

Then restore the database backup

```
psql -U paperless -d paperless < path_to_paperless.sql
```

and recreate the document index

```
python manage.py document_index reindex
```

### Recipes

#### Restore

##### Mediafiles

Get snapshot id to restore, use env file from ~/docker-services/resticker

```
docker run --env-file .env mazzolino/restic snapshots
```

Execute restore

```
docker run -v recipes_recipes_mediafiles:/restore --env-file .env mazzolino/restic restore <snapshot_id> --target /restore --include /backup/recipes_mediafiles
```

##### Database

Create empty recipes database and run recipe app to create the database schema. Then delete all tables and restore backup:

```
psql -U postgres -d recipes < recipes.sql
```

## Useful stuff

Run midnight commander in docker

```
docker run -it --name=mc -v paperless-ngx_paperless-ngx-app_media:/restore blackvoidclub/midnight-commander
```
