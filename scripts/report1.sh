#!/bin/bash
katalog="${1:-}"
if [[ -z "$katalog" ]]; then
  echo "$katalog istnieje " >&2
  exit 2
fi

if [[ ! -d "$katalog" ]]; then
  echo "$katalog nie istnieje" >&2
  exit 1
fi

