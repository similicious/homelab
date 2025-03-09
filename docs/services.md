# Service overview

| Name                | Access       | IAM            | Groups                                 |
| ------------------- | ------------ | -------------- | -------------------------------------- |
| 2fauth              | local 🏠     | forwarded-auth | admin                                  |
| actual-budget       | local 🏠     | internal       | -                                      |
| adguard-home        | local 🏠     | internal       | -                                      |
| airsonic-refix      | local 🏠     | forwarded-auth | admin                                  |
| audiobookshelf      | public 🌍    | oidc           | media, admin / user (account creation) |
| authelia            | public 🌍    | auth provider  | -                                      |
| bazarr              | local 🏠     | forwarded-auth | admin                                  |
| beets               | local 🏠     | none           | -                                      |
| beszel              | local 🏠     | oauth          | admin                                  |
| ddns                | local 🏠     | none           | -                                      |
| deemix              | local 🏠     | forwarded-auth | admin                                  |
| deezer-downloader   | local 🏠     | forwarded-auth | admin                                  |
| filebrowser         | local 🏠     | forwarded-auth | admin                                  |
| hibiscus-server     | local 🏠     | internal       | -                                      |
| hibiscus-actual     | local 🏠     | none           | -                                      |
| homeassistant       | local 🏠     | internal       | -                                      |
| jdownloader2        | local 🏠     | forwarded-auth | admin                                  |
| jellyfin            | public 🌍    | internal, ldap | admin, media                           |
| kitchen-owl         | public 🌍    | oauth          | home                                   |
| lldap               | local 🏠     | internal       | -                                      |
| navidrome           | local 🏠     | forwarded-auth | admin                                  |
| nextcloud           | public 🌍    | internal       | -                                      |
| nextcloud-collabora | public 🌍    | none           | -                                      |
| open-webui          | local 🏠     | oauth          | admin                                  |
| packlist            | local 🏠     | internal       | -                                      |
| paperless-ngx       | local 🏠     | forwarded-auth | admin                                  |
| photoprism          | public 🌍    | internal       | -                                      |
| portainer           | local 🏠     | oauth          | admin                                  |
| prowlarr            | local 🏠     | forwarded-auth | admin                                  |
| radarr              | local 🏠     | forwarded-auth | admin                                  |
| redlib              | local 🏠     | none           | -                                      |
| rest-server         | tailscale 🔐 | none           | -                                      |
| sabnzbd             | local 🏠     | forwarded-auth | admin                                  |
| scanservjs          | local 🏠     | none           | -                                      |
| scrutiny            | local 🏠     | none           | -                                      |
| searxng             | local 🏠     | none           | -                                      |
| sonarr              | local 🏠     | forwarded-auth | admin                                  |
| speedtest           | local 🏠     | none           | -                                      |
| stirling-pdf        | local 🏠     | none           | -                                      |
| syncthing           | local 🏠     | internal       | -                                      |
| tandoor-recipes     | public 🌍    | internal       | home                                   |
| traefik             | local 🏠     | forwarded-auth | admin                                  |
| transmission        | local 🏠     | forwarded-auth | admin                                  |
| uptime-kuma         | local 🏠     | internal       | -                                      |
| vikunja             | public 🌍    | internal       | -                                      |
| webtop              | local 🏠     | forwarded-auth | admin                                  |
