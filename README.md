# Homelab

This repository contains the configuration of my homelab, automated with Ansible.

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
