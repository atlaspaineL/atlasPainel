#!/bin/sh

USR_EX=$1

_getUserEx() {
    user_count=$(grep "^$1:x:" /etc/passwd | cut -d ':' -f 1 | wc -c)
    echo $user_count | tr -dc '0-9'
}

if [ -z "${USR_EX}" ]; then
    echo "Você deve especificar um usuário."
    exit 1
else
    USER_COUNT=$(_getUserEx $USR_EX)
    if [ "$USER_COUNT" -gt 3 ]; then
        kill -9 $(ps -fu $USR_EX | awk '{print $2}' | grep -v PID)
        userdel $USR_EX
        echo "1"
        grep -v "^$USR_EX[[:space:]]" /root/usuarios.db > /tmp/ph
        cat /tmp/ph > /root/usuarios.db
        rm /etc/SSHPlus/senha/$USR_EX 1>/dev/null 2>/dev/null
        rm /etc/usuarios/$USR_EX 1>/dev/null 2>/dev/null
        exit 0
    else
        echo "2"
        exit 2
    fi
fi
