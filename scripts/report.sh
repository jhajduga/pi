#!/bin/bash

set -eu  

DRY=0
if [ "${1:-}" = "-n" ]; then
  DRY=1
  shift
fi

DIR="${1:-}"
if [ -z "$DIR" ]; then
  echo "Użycie: bash scripts/report.sh [-n] <KATALOG>" >&2
  exit 2
fi

if [ ! -d "$DIR" ]; then
  echo "Błąd: katalog '$DIR' nie istnieje" >&2
  exit 1
fi

date +"%F %T"

HAS_SUBDIR=0
for d in "$DIR"/*; do          
  if [ -d "$d" ]; then
    HAS_SUBDIR=1
    break
  fi
done

if [ "$HAS_SUBDIR" -eq 0 ]; then
  if [ "$DRY" -eq 1 ]; then
    echo "DRY-RUN: brak podkatalogów w: $DIR"
  else
    echo "Brak podkatalogów w: $DIR"
  fi
  exit 0
fi

if sort --help 2>/dev/null | grep -q -- "-h"; then
  OUT="$(du -sh "$DIR"/* 2>/dev/null | sort -h | tail -5)"
else
  OUT="$(du -s  "$DIR"/* 2>/dev/null | sort -n | tail -5)"
fi

if [ "$DRY" -eq 1 ]; then
  echo "DRY-RUN: poniżej byłby wynik TOP-5 (bez modyfikacji danych):"
fi

printf '%s\n' "$OUT"

exit 0
