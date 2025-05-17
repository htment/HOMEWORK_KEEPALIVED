#!/bin/bash

# Проверка доступности порта 80
if ! nc -z localhost 80; then
    exit 1
fi

# Проверка существования файла index.html
WEB_ROOT="/var/www/html"
if [ ! -f "${WEB_ROOT}/index.html" ]; then
    exit 1
fi

exit 0