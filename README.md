# Runing a sinatra application on Docker

This is sample project for running a sinatra application on Docker.

It was cloned from [tcnksm](https://github.com/tcnksm-sample/docker-sinatra) and modified (with thanks).

## Usage

Create Image

```
docker build -t sinatra .
```

Run it !

```
ID=$(docker run -p 4567:4567 -d sinatra)
```

You can access it from your browser, [http://localhost:4567/](http://localhost:4567/).

Check logs.

```
docker logs $ID
```

Stop it.

```
docker stop $ID
```

Delete it.

```
docker rm $ID
```

## Reference

- [Sinatra deployment with Docker](http://haanto.com/sinatra-deployment-with-docker/)
