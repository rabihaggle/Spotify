#!/bin/bash
docker run --rm -it -p 27228:27228 --env-file ./spotify.env ghcr.io/conradludgate/spotify-auth-proxy
