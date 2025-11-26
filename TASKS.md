# **TASKS (50 pkt + 2 pkt bonus)**

## **Zadanie 1 — Praca z plikami i filtrowaniem (10 pkt)**

1. (3 pkt) Utwórz katalog `out/`
2. (3 pkt) Utwórz katalog `work/tmp/`
3. (4 pkt) Z pliku:

```
data/logs/system.log
```

wyfiltruj **wystąpienia ERROR i WARN (case-insensitive)** i zapisz do:

```
out/log_filtered.txt
```

Dozwolone (⟵ dokładnie to ćwiczyliśmy):

* `grep -i`
* potok z `|`
* przekierowanie `>`

---

## **Zadanie 2 — Proste potoki + pętle (10 pkt)**

Wybierz **jedną** wersję.

---

### ✔️ **Wersja 2A — Pętla po plikach (łatwiejsza)**

Dla każdego pliku `*.txt` w katalogu `data/texts/`:

* policz liczbę linii `wc -l`
* wypisz wynik w formacie:

```
<liczba> <nazwa_pliku>
```

Wszystkie wyniki zapisz do:

```
out/text_linecount.txt
```

**Wskazówki (zgodne ze slajdami):**

* użyj pętli `for f in *.txt` ()
* sprawdź `-f "$f"` żeby pominąć katalogi
* użyj `wc -l < "$f"` (ze slajdów)

---

### ✔️ **Wersja 2B — Najczęstsze słowa (tak jak ćwiczyliśmy)**

Z pliku:

```
data/lorem.txt
```

1. zamień tekst na małe litery
2. zamień każdy „ciąg znaków” na osobne słowo
3. policz najczęstsze słowa
4. wypisz **top 5 najczęstszych** do:

```
out/topwords.txt
```

To jest dokładnie przykład ze slajdów:
`tr -cs`, `tr 'A-Z' 'a-z'`, `sort | uniq -c | sort -nr | head` ()

---

## **Zadanie 3 — Skrypt Bash: daily mini-report (15 pkt)**

Utwórz skrypt:

```
scripts/daily.sh
```

Uruchamianie:

```
bash scripts/daily.sh <KATALOG>
```

### **Wymagania minimalne (tylko to, czego uczyliśmy):**

1. (4 pkt) Jeżeli `<KATALOG>` nie istnieje → wypisz komunikat i zakończ kodem ≠ 0
   (if / test `-d`, ❗ dokładnie ze slajdu — )

2. (4 pkt) Wypisz:

   * aktualną datę w formacie `YYYY-MM-DD HH:MM:SS`
   * wartość `$USER`
   * ścieżkę absolutną katalogu (`realpath "$1"`)

3. (7 pkt) Wypisz prosty raport z katalogu:

   * liczbę plików:

     ```
     find "$DIR" -maxdepth 1 -type f | wc -l
     ```
   * liczbę podkatalogów:

     ```
     find "$DIR" -maxdepth 1 -type d | wc -l
     ```

**To jest poziom „if + pętla + filtry + wc”, dokładnie jak ćwiczyliśmy.**

---

## **Zadanie 4 — Git (15 pkt)**

1. (5 pkt) Praca na gałęzi:

   ```
   zaliczenie/<TwojLogin>
   ```
2. (5 pkt) Minimum 2 commity, sensowne opisy
3. (5 pkt) Push + Pull Request do własnego forka

