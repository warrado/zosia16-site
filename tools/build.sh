#!/usr/bin/env bash

HELP_TEXT="Build the docker images for zosia.
Usage:
    ./build.sh [options]

Options:
    --no-cache  - don't use docker cache while building the images
    --prod      - build prod images instead of dev (default). This basically
                  means you're gonna be using docker-compose.prod.yml instead
                  of docker-compose.dev.yml
    --tag TAG   - tag resulting images with zosia:<TAG> instead of zosia:latest
    --verbose   - verbose output, useful for debugging purposes
"

NO_CACHE=""
COMPOSE_FILE_REMINDER="dev"
TAG="latest"
VERBOSE=""

while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    --help)
    echo "${HELP_TEXT}"
    exit 0
    ;;
    --no-cache)
    NO_CACHE="--no-cache"
    shift
    ;;
    --prod)
    echo "Currently only dev builds are supported"
    exit 1
    COMPOSE_FILE_REMINDER="prod"
    shift
    ;;
    --tag)
    shift
    TAG="$1"
    shift
    ;;
    --verbose)
    VERBOSE="--verbose"
    shift
    ;;
    *)
    echo "Argument $1 is not supported."
    echo "${HELP_TEXT}"
    exit 1
    ;;
esac
done

export TAG=${TAG}

COMPOSE_FILENAME="docker-compose.${COMPOSE_FILE_REMINDER}.yml"
echo "Running build using ${COMPOSE_FILENAME} and tagging containers with zosia:${TAG}"
docker-compose ${VERBOSE} -f ../${COMPOSE_FILENAME} build ${NO_CACHE}