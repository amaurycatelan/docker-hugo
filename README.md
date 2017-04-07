# Docker Hugo

Hugo modified container based on alpine.

## Get binary (linux-64bit):

From [Docker Hub](https://hub.docker.com/r/amaurycatelan/docker-hugo)  
Size: ~13MB :tada:

```
docker run --rm -v $(pwd):/src amaurycatelan/docker-hugo:latest
docker run --rm -v $(pwd):/src amaurycatelan/docker-hugo:latest version
docker run --rm -v $(pwd):/src amaurycatelan/docker-hugo:latest help
```

### Building from Dockerfile

From Docker Hub:

```
docker build -t amaurycatelan/docker-hugo:latest .
```

From GIT:

```
docker build ./binary
```

## Get binary (linux-64bit) with source:

From [Docker Hub](https://hub.docker.com/r/amaurycatelan/docker-hugo)  
Size: ~206MB :anguished:

```
docker run --rm -v $(pwd):/build amaurycatelan/docker-hugo:source-latest
```

### Building from Dockerfile

From Docker Hub:

```
docker build -t amaurycatelan/docker-hugo:source-latest .
```

From GIT:

```
docker build ./source
```

## Credits

Based on the [Serge Gebhardt](https://github.com/sgeb/docker-hugo) repository
& [Hugo](https://github.com/spf13/hugo/blob/master/Dockerfile) :ghost: