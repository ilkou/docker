#!/bin/sh
git clone https://github.com/42Paris/minilibx-linux mlx
apk add libxext-dev
apk add libbsd-dev
cd mlx;
./configure;
