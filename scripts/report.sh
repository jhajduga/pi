#!/bin/bash

DIR=${1:-} #Wprowadzenie zmiennej

if [ ! -d "$DIR" ]; then #Jeśli wprowadzona zmienna to nie katalog, to: 
  echo "Katalog o nazwie '$DIR' nie istnieje." # Wypisanie że nie istnieje wpisany katalog
  exit 2 #Kod wyjścia, zakończenie skryptu
fi
 
echo " $(date +%F)  $(date +%T) "  #Wypisanie Daty dzisiejszej i godziny


du -h "$DIR"/* 2>/dev/null | sort -h | tail -n 5  #Wyświetla 5 największych plików
#du -s "$DIR"/* 2>/dev/null | sort -n | tail -n 5  #Brak sort -h
