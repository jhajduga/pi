#!/bin/bash
katalog="${1:-}"
if [ -d "$katalog" ]; then
  date +"%F %T"
  du -sh "$katalog"/* 2>/dev/null | sort -nr | head -5
else
  echo "Katalog nie istnieje"
fi
