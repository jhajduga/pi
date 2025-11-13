#!/bin/bash
K=${1:katalog} #stworzenie argumentu, jeśli nie podany to używa nazwy katalog 
if [ ! -d "$K" ]; then #sprawdzenie, czy NIE istnieje dany katalog
echo "Katalog nie istnieje" #Jeśli katalog nie istnieje wyświetla komunikat
exit=1
else #jeśli istenie, to:
echo "Jest: $(date +"%F %T")" #wypisuje datę
du -sh "$K"/* 2>/dev/null | sort -h | tail -5 #wyświetla top 5 podkatalogów
fi 

