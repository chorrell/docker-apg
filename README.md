# docker-apg

[![Docker](https://github.com/chorrell/docker-apg/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/chorrell/docker-apg/actions/workflows/docker-publish.yml)

A docker image for apg

## Usage with Docker run

Use this Docker image from the command line in the same way you would with apg.

First build the image:

```sh
docker build -t apg .
```

Now use the image to call apg with `docker run -i --rm apg`:

Run apg without arguments:

```sh
docker run -i --rm apg
```

Usage:

```sh
docker run -i --rm apg -h
```

Version info:

```sh
docker run -i --rm apg -v
```

Generate some long, complex passwords:

```sh
docker run -i --rm apg -m 24 -M SNCL
```

## Make it easier with an alias

Add this to your `.bashrc` or `.zshrc` file:

```bash
alias apg='docker run -i --rm apg'
```

## Using the Docker Hub image

The lateset version of this image is published to the Docker Hub. You can use it like this:

```sh
docker pull chorrell/apg:latest

docker run -i --rm chorrell/apg:latest
```

And setup an alias like this:

```bash
alias apg='docker run -i --rm chorrell/apg:latest'

## Using the GitHub Container Registry image

The lateset version of this image is published to the GitHub Container Registry. You can use it like this:

```sh
docker pull ghcr.io/chorrell/apg:latest

docker run -i --rm ghcr.io/chorrell/apg:latest
```

And setup an alias like this:

```bash
alias apg='docker run -i --rm ghcr.io/chorrell/apg:latest'
```
