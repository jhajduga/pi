#!/bin/bash

#if [ -d "$katalog" ]; then
#  date +"%F %T"
#  du -sh "$katalog" | sort -nr | head -5
#else
#  echo "Katalog nie istnieje"
#fi
#Zapomniałem jak zrobić żeby wczytał sobie nasz konkretny katalog i  w nim znalazł 5 największych podkatalogów, co jest zrobione wyżej. Poniżej wersja szukająca na całym komputerze, zamiast w konkretnym katalogu.
date +"%F %T" #data + minuty i sekundy
du -sh * | sort -hr | head -5 #rozmiary pięciu ogólnie największych katalogów na komputerze, potem posortowanie ich malejąco i wypisanie pierwszych pięciu
