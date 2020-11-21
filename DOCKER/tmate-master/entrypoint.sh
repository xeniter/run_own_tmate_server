#!/bin/sh
mix do ecto.create, ecto.migrate

# This will exec the CMD from your Dockerfile
exec "$@"
