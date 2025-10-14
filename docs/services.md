# Service overview

| Name              | Access       | IAM            | Groups                                  |
| ----------------- | ------------ | -------------- | --------------------------------------- |
| 2fauth            | local 🏠     | forwarded-auth | admin                                   |
| actual-budget     | local 🏠     | internal       | -                                       |
| adguard-home      | local 🏠     | internal       | -                                       |
| airsonic-refix    | local 🏠     | forwarded-auth | admin                                   |
| audiobookshelf    | public 🌍    | oidc           | media, admin / user (account creation)  |
| audiothek-rss     | local 🌍     | none           |                                         |
| authelia          | public 🌍    | auth provider  | -                                       |
| bazarr            | local 🏠     | forwarded-auth | admin                                   |
| beets             | local 🏠     | none           | -                                       |
| beszel            | local 🏠     | oauth          | admin                                   |
| changedetection   | local 🏠     | forwarded-auth | admin                                   |
| copyparty         | local 🏠     | forwarded-auth | limited public access, configured users |
| dawarich          | local 🏠     | internal       | -                                       |
| ddns              | local 🏠     | none           | -                                       |
| deemix            | local 🏠     | forwarded-auth | admin                                   |
| deezer-downloader | local 🏠     | forwarded-auth | admin                                   |
| health-tracker    | local 🏠     | internal       | -                                       |
| hibiscus-server   | local 🏠     | internal       | -                                       |
| hibiscus-actual   | local 🏠     | none           | -                                       |
| homeassistant     | local 🏠     | internal       | -                                       |
| immich            | local 🏠     | oauth          | admin                                   |
| jdownloader2      | local 🏠     | forwarded-auth | admin                                   |
| jellyfin          | public 🌍    | internal, ldap | admin, media                            |
| jellyseerr        | public 🌍    | via jellyfin   |                                         |
| kitchen-owl       | public 🌍    | oauth          | home                                    |
| lldap             | local 🏠     | internal       | -                                       |
| navidrome         | local 🏠     | forwarded-auth | admin                                   |
| nextcloud         | public 🌍    | internal       | -                                       |
| omni-tools        | local 🏠     | none           | -                                       |
| open-webui        | local 🏠     | oauth          | admin                                   |
| packlist          | local 🏠     | internal       | -                                       |
| paperless-ngx     | local 🏠     | forwarded-auth | admin                                   |
| photoprism        | public 🌍    | internal       | -                                       |
| portainer         | local 🏠     | oauth          | admin                                   |
| prowlarr          | local 🏠     | forwarded-auth | admin                                   |
| radarr            | local 🏠     | forwarded-auth | admin                                   |
| redlib            | local 🏠     | none           | -                                       |
| rest-server       | tailscale 🔐 | none           | -                                       |
| sabnzbd           | local 🏠     | forwarded-auth | admin                                   |
| scanservjs        | local 🏠     | none           | -                                       |
| scrutiny          | local 🏠     | none           | -                                       |
| searxng           | local 🏠     | none           | -                                       |
| sonarr            | local 🏠     | forwarded-auth | admin                                   |
| speedtest         | local 🏠     | none           | -                                       |
| stirling-pdf      | local 🏠     | none           | -                                       |
| syncthing         | local 🏠     | internal       | -                                       |
| tandoor-recipes   | public 🌍    | oauth          | home                                    |
| traefik           | local 🏠     | forwarded-auth | admin                                   |
| tdarr             | local 🏠     | forwarded-auth | -                                       |
| transmission      | local 🏠     | forwarded-auth | admin                                   |
| uptime-kuma       | local 🏠     | internal       | -                                       |
| vikunja           | public 🌍    | oauth          | admin                                   |
| webtop            | local 🏠     | forwarded-auth | admin                                   |
