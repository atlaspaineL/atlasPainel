#!/bin/bash

# Verificar se o número correto de argumentos foi fornecido
if [ "$#" -ne 5 ]; then
    echo "Uso: $0 <novo_id> <email> <senha> <validade> <limite>"
    exit 1
fi

# Atribuir argumentos a variáveis
uuid="$1"
email="$2"
senha="$3"
validade="$4"
limite="$5"
config_file="/etc/v2ray/config.json"

# Verificar se o novo ID já existe na configuração
if grep -q "\"id\": \"$uuid\"" "$config_file"; then
    echo "2"
else
    # Adicionar o novo cliente ao JSON e substituir o arquivo de configuração diretamente
    new_client='{"id": "'$uuid'", "alterId": 0, "email": "'$email@gmail.com'"}'
    tmpfile=$(mktemp)
    jq --argjson newclient "$new_client" '.inbounds[0].settings.clients += [$newclient]' "$config_file" > "$tmpfile" && mv "$tmpfile" "$config_file"
    echo "1"
    systemctl restart v2ray
    bash atlascreate.sh $email $senha $validade $limite
fi