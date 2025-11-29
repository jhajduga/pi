#!/bin/bash
DIR="${1:-}"
if [ -z "$DIR" ]; then
  exit 2 
fi

if [[ ! -d "$DIR" ]]; then
  echo "Katalog '$DIR' nie istnieje" >&2
  exit 1
fi
 date +"%F %T"

top_kat(){
local d="$1"
if sort --help 2>&1 | grep -q -- "-h";then
du -sh "$d"/*2>/dev/null |sort -h |tail -5
else 
du -s "$d"/*2>/dev/null | sort -n | tail -5
fi
}
