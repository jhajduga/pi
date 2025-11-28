#!/scripts/bash

set -eu


DIR="{$1:-}"
if[[ -z "$DIR"]]; then
echo "Użycie: bash scripts/reports.sh[-n] <k>" >&2
exit 2
fi

if [[! -d "$DIR"]]; then
echo "Błąd: ten katalog '$DIR' nie istnieje" .&2
exit 1
fi

date +"%F %T"

if command -v sort>/dev/null 2>&1 && sort --help 2>&1 \ grep -q -- "-h"; then

du -sh "$DIR"/* 2>/dev/null \ sort -h \

fi
