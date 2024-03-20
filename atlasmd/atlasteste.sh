#!/bin/bash
 folder_path="/etc/TesteAtlas"
 pass=$(perl -e 'print crypt($ARGV[0], "password")' $2)
 final=$(date "+%Y-%m-%d" -d "+2 days")
 useradd -e $final -M -s /bin/false -p $pass $1
 username="$1"
 generate_random_string() {
    local length="$1"
    local chars="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    local result=$(head /dev/urandom | tr -dc "$chars" | head -c "$length")
    echo "$result"
 }
 random_string=$(generate_random_string 10)
 password="$2"
 dias="$3"
 sshlimiter="$4"
 php /opt/DragonCore/menu.php insertData $username $password $sshlimiter
 if [ -d "$folder_path" ]; then
 echo "#!/bin/bash
usermod -p \$(openssl passwd -1 'poneicavao2930') $username
pkill -f \"$username\"
userdel --force $username
php /opt/DragonCore/menu.php deleteData $username
rm /etc/TesteAtlas/$random_string.sh" > /etc/TesteAtlas/$random_string.sh
 chmod +x /etc/TesteAtlas/$random_string.sh
 at -f /etc/TesteAtlas/$random_string.sh now + $dias min > /dev/null 2>&1
 echo "CRIADOCOMSUCESSO"
 else
 mkdir /etc/TesteAtlas
 echo "#!/bin/bash
usermod -p \$(openssl passwd -1 'poneicavao2930') $username
pkill -f \"$username\"
userdel --force $username
php /opt/DragonCore/menu.php deleteData $username
rm /etc/TesteAtlas/$random_string.sh" > /etc/TesteAtlas/$random_string.sh
 chmod +x /etc/TesteAtlas/$random_string.sh
 at -f /etc/TesteAtlas/$random_string.sh now + $dias min > /dev/null 2>&1
 echo "CRIADOCOMSUCESSO"
 fi
 