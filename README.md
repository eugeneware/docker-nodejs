# docker-nodejs

nodejs docker container that can do binary module builds

## Usage

### Using the public docker registry

``` bash
$ docker pull eugeneware/nodejs
$ docker run -rm eugeneware/nodejs node --version
```

### Building from scratch

``` bash
$ docker build -t eugeneware/nodejs .
$ docker run -rm eugeneware/nodejs node --version
```
