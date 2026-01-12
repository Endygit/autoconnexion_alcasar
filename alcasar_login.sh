#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage : $0 email"
    exit 1
fi

LOGIN="$1"
CHECK_INTERVAL=30

read -s -p "Mot de passe ALCASAR : " PASSWORD
echo ""

GATEWAY=$(ip route | awk '/default/ {print $3}')
ALCASAR_URL="http://$GATEWAY/intercept.php"

connect_alcasar() {
    curl -s -X POST "$ALCASAR_URL" \
        -d "login=$LOGIN" \
        -d "password=$PASSWORD" \
        -d "submit=OK" > /dev/null
}

alcasar_active() {
    curl -s -I http://neverssl.com | grep -qi "intercept.php"
}

echo "Verification de la presence d'ALCASAR..."

while true; do
    if alcasar_active; then
        echo "$(date '+%H:%M:%S') ALCASAR detecte - connexion"
        connect_alcasar
    else
        echo "$(date '+%H:%M:%S') Pas de portail ALCASAR"
    fi
    sleep "$CHECK_INTERVAL"
done
