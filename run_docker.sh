#!/usr/bin/env bash
docker build --tag=proj4ml .
docker image ls
docker run -p 8000:80 proj4ml
