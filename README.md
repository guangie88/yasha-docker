# yashi-docker

Yashi CLI for Jinja2 template renderer Dockerfile set-up

[![Build Status](https://travis-ci.org/guangie88/yasha-docker.svg?branch=master)](https://travis-ci.org/guangie88/yasha-docker)

## Description

The Docker `WORKDIR` is at `/app`, and the entrypoint starts with `yashi`, and
therefore only the arguments to `yashi` should be part of the command.

You are recommended to use stdin and stdout to run `yasha`.

## Run Example

```bash
cat ./app.conf.j2 \
    | docker run -i \
        -v "$PWD/vars/":/app/vars/ \
        guangie88/yasha:latest \
        -v /app/vars/dev.toml - \
    > ./app.conf
```

The above command assumes that both the Jinja2 template file `app.conf.j2`, and
the value file `./vars/dev.toml` exist. It applies the values from
`./vars/dev.toml` to `app.conf.j2`, and writes the output to `app.conf`.