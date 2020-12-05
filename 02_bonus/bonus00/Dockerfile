FROM	alpine

MAINTAINER ilkou <oouklich@student.1337.ma>

ARG	mlx

COPY	script.sh .

RUN	apk update && \
	apk upgrade && \
	apk add build-base git vim

RUN	if [ "$mlx" == "true" ]; then sh script.sh ; else echo "no mlx support"; fi
