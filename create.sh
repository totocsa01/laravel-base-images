#!/bin/bash

docker build --no-cache -t laravel-base-nginx:01 -f Dockerfile-nginx . \
  && docker build --no-cache -t laravel-base-php-8.5:01 -f Dockerfile-php-8.5 . \
  && docker build --no-cache -t laravel-base-postgres-18:01 -f Dockerfile-postgres-18 .
