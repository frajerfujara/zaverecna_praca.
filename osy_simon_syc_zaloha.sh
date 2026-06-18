#!/bin/bash
ZDROJ="$HOME/zaloha_syc"
CIEL="/tmp/zalohy"
DATUM=$(date +%Y-%m-%d)
ARCHIV="$CIEL/zaloha-$DATUM.tar.gz"

if [ ! -d "$ZDROJ" ]; then
    echo "CHYBA: zdrojovy priecinok '$ZDROJ' neexistuje."
    exit 1
fi

mkdir -p "$CIEL"
echo "Zalohujem '$ZDROJ' do '$ARCHIV' ..."
tar -czf "$ARCHIV" "$ZDROJ"
echo "Hotovo. Archiv: $ARCHIV"
ls -lh "$ARCHIV"
