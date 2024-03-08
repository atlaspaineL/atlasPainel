#!/bin/bash

delete_id() {
    if [ "$#" -ne 2 ]; then
        echo "Uso: $0 <uuid> <login>"
        exit 1
    fi

    uuidel="$1"
    login="$2"

    invaliduuid() {
        echo "UUID inválido"
        exit 1
    }

    if grep -q "$uuidel" /etc/v2ray/config.json; then
        tmpfile=$(mktemp)
        jq --arg uuid "$uuidel" 'del(.inbounds[0].settings.clients[] | select(.id == $uuid))' /etc/v2ray/config.json > "$tmpfile" && mv "$tmpfile" /etc/v2ray/config.json

        echo "Objeto com 'id' igual a $uuidel removido"
        bash atlasremove.sh "$login"
    else
        invaliduuid
    fi
}

delete_id "$1" "$2"
