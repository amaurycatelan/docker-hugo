# Docker Hugo

Hugo container based on alpine.

## Usage

From [Docker Hub](https://hub.docker.com/r/amaurycatelan/docker-hugo):

```
docker run --rm -v $(pwd):/src amaurycatelan/docker-hugo:latest
```

## Building

```
docker build -t amaurycatelan/docker-hugo .
```

## Credits

Based on the [Serge Gebhardt](https://github.com/sgeb/docker-hugo) repository.