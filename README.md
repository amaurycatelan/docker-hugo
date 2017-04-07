# Docker Hugo

Hugo modified container based on alpine, a lightweight Linux distribution. :ok_hand:

## 1. Custon Hugo:  [:sparkles:]  :package:

From [Docker Hub](https://hub.docker.com/r/amaurycatelan/docker-hugo)  
Size: ~13MB  :tada:

```
docker run --rm -v $(pwd):/src amaurycatelan/docker-hugo:latest
docker run --rm -v $(pwd):/src amaurycatelan/docker-hugo:latest version
docker run --rm -v $(pwd):/src amaurycatelan/docker-hugo:latest help
```

### Building from Dockerfile

From [Docker Hub](https://hub.docker.com/r/amaurycatelan/docker-hugo)

```
docker build -t amaurycatelan/docker-hugo:latest .
```

From this GIT repository:

```
docker build ./binary
```

## 2. Get hugo binary (linux-64bit) from source:  [:question:]  :package:  :notebook_with_decorative_cover:

> Is this trip really necessary? Sure, it's necessary. I'm a necessary evil.  
> *Woody Woodpecker*

From [Docker Hub](https://hub.docker.com/r/amaurycatelan/docker-hugo)  
Size: ~206MB  :anguished:

```
docker run --rm -v $(pwd):/build amaurycatelan/docker-hugo:source-latest
```

### Building from Dockerfile

From [Docker Hub](https://hub.docker.com/r/amaurycatelan/docker-hugo)

```
docker build -t amaurycatelan/docker-hugo:source-latest .
```

From this GIT repository:

```
docker build ./source
```

## Credits

Based on the [Serge Gebhardt](https://github.com/sgeb/docker-hugo) repository
& [Hugo](https://github.com/spf13/hugo/blob/master/Dockerfile) :ghost: