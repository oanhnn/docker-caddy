# docker-caddy

[![Software License](https://img.shields.io/github/license/oanhnn/docker-caddy.svg)](LICENSE)
[![Build Status](https://img.shields.io/travis/oanhnn/docker-caddy/master.svg)](https://travis-ci.org/oanhnn/docker-caddy)
[![Docker Build Method](https://img.shields.io/docker/automated/oanhnn/caddy.svg)](https://hub.docker.com/r/oanhnn/caddy)
[![Docker Build Status](https://img.shields.io/docker/build/oanhnn/caddy.svg)](https://hub.docker.com/r/oanhnn/caddy)
[![Docker Pull Counter](https://img.shields.io/docker/pulls/oanhnn/caddy.svg)](https://hub.docker.com/r/oanhnn/caddy)
[![Docker Star Counter](https://img.shields.io/docker/stars/oanhnn/caddy.svg)](https://hub.docker.com/r/oanhnn/caddy)

Repository of `oanhnn/caddy` Docker image.

A [Docker] image for [Caddy][caddy_site]. This image includes [git][pl_git], [cors][pl_cors], [realip][pl_realip], [expires][pl_expires] and [cache][pl_cache] plugins.

## Tags

### Version tags

Image Tag    | Badges
-------------|-------
`0.11.2`     | [![Docker Image Size](https://img.shields.io/microbadger/image-size/oanhnn/caddy/1.11.svg)](https://microbadger.com/images/oanhnn/caddy:1.11) [![Docker Image Layers](https://img.shields.io/microbadger/layers/oanhnn/caddy/1.11.svg)](https://microbadger.com/images/oanhnn/caddy:1.11)

### Shared tags

- `latest` - `0.11.2`

## Features

- [x] This image is built from source code.
- [x] Version can be configured via the [`caddy_version` build arg](#custom-version).
- [x] Plugins can be configured via the [`caddy_plugins` build arg](#custom-plugins).
- [x] Telemetry can be disable via the [`caddy_telemetry` build arg](#disable-telemetry).
- [x] Caddy binary file was compress by [UPX](https://github.com/upx/upx)

## Usage

## Customize

## Contributing

All code contributions must go through a pull request and approved by a core developer before being merged. 
This is to ensure proper review of all the code.

Fork the project, create a feature branch, and send a pull request.

If you would like to help take a look at the [list of issues](https://github.com/oanhnn/docker-caddy/issues).

## License

This image is built from [source code][caddy_source]. As such, it is subject to the project's [Apache 2.0 license][caddy_license], 
but it neither contains nor is subject to [the EULA for Caddy's official binary distributions][caddy_eula].

This project is released under the MIT License.   
Copyright © 2018 [Oanh Nguyen](https://github.com/oanhnn)   
Please see [License File](https://github.com/oanhnn/docker-caddy/blob/master/LICENSE) for more information.



[Docker]:           https://docker.com
[pl_git]:           https://caddyserver.com/docs/http.git
[pl_cors]:          https://caddyserver.com/docs/http.cors
[pl_realip]:        https://caddyserver.com/docs/http.realip
[pl_cache]:         https://caddyserver.com/docs/http.cache
[pl_expires]:       https://caddyserver.com/docs/http.expires
[caddy_site]:       https://caddyserver.com
[caddy_source]:     https://github.com/mholt/caddy
[caddy_license]:    https://github.com/mholt/caddy/blob/baf6db5b570e36ea2fee30d50f879255a5895370/LICENSE.txt
[caddy_eula]:       https://github.com/mholt/caddy/blob/545fa844bbd188c1e5bff6926e5c410e695571a0/dist/EULA.txt
