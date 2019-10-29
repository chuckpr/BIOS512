#!/usr/bin/env bash

PORT=${PORT:-8888}

docker run \
  -w "$PWD" -v "$PWD:$PWD" \
  -d -it --rm \
  -e GRAND_SUDO=yes -e NB_UID="$(id -u)" \
  -p "$PORT:$PORT" \
  --user root \
  --name "${IMAGE}_$(id -u)_lab" \
  "$IMAGE" start.sh jupyter lab --port "$PORT" --allow-root
