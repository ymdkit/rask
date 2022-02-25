#!/bin/bash

# This scirpt is only for used by scripts/setup-docker.sh
# Do not execute manually

if ! [ "$1" = "--skip-credentials" ];then
    echo
    echo "Creating master.key and credentials.yml.enc"
    if ! EDITOR=":" bundle exec rails credentials:edit; then
        echo
        echo "Error:"
        echo "    Failed to create master.key"
        exit 1
    fi
fi

echo
echo "Migrating database"
if ! bundle exec rails db:migrate; then
    echo
    echo "Error:"
    echo "    Failed to migrate database"
    exit 1
fi

echo
echo "Compiling assets"
if ! bundle exec rails assets:precompile RAILS_ENV="production"; then
    echo
    echo "Error:"
    echo "    Failed to compile assets"
    exit 1
fi
