# C - Environment

set up your environment for C programming language.

`make` `clang` `git` `vim`

## Build image

### with minilibx

`docker build . -t c-env --build-arg mlx=true`

### without minilibx

`docker build . -t c-env`

## Run container

### with minilibx

`docker run -it c-env sh script.sh`

### without minilibx

`docker run -it c-env`
