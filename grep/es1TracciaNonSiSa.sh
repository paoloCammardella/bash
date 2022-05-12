#!/bin/bash

# Punto 1
ls -la | grep "^-...---" | awk '{print $9}'

# Punto 2
ls -la | grep "^-" | awk '{print $9}' | grep "^\.[xs]"

# Punto 3
ls -la | grep "^l" | awk '{print $9}'

 grep "Jane Williams" names.txt
 
 grep "Jane Williams" names.txt
 
 grep -w "Jane Williams" name.txt

 Comandi dopo il comando grep e prima dell'espressione:
    -w: Cerca solo la parola intera, ad esempio se cerco "camp", non mi restituira` anche "campeggio".
    -i: Non case sensitive, trovera` la parola che rispetta l'espressione indifferentemente da maiuscole e minuscole.
    -n: Restituisce l'espressione e la riga dove e` stata trovata.
    -r: Cerca in tutte le directory.
    -l: Restituisce tutti i file contenenti l'espressione.
   "...-...": Cerca sei caratteri separati da un trattino.
   "\d{n}": Cerca n numeri di fila.

Comandi dopo il comando i comandi ma prima dell'espressione:
    -B <1...9999999999>: Trova l'espressione e le n righe precedenti.
    -A <1...9999999999>: Trova l'espressione e le n righe successive. 
    -C <1...9999999999>: Trova l'espressione e le n righe precedenti e successive.

Comandi alla fine dell'espressione:
   ./*: Cerca in tutti i file nella directory corrente.    
   ./*.txt: Cerca in tutti i file con l'estensione ".txt".