#!/bin/bash

URL='192.168.50.175'

#curl для запроса
VERSION=$(curl -i -l $URL | grep "Server:")

if [ -z "$VERSION" ]; then
    echo "Не удалось получить информацию о версии NGINX."
else
    echo "Используемая версия NGINX: $VERSION"
fi