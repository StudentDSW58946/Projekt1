#!/bin/bash

case $1 in
  --date)
    echo "Dzisiejsza data: $(date)"
    ;;
  --logs)
    num=${2:-100}
    for i in $(seq 1 $num); do
      filename="log${i}.txt"
      echo "Nazwa pliku: $filename" > $filename
      echo "Skrypt: $0" >> $filename
      echo "Data: $(date)" >> $filename
    done
    ;;
  --help)
    echo "Dostępne opcje:"
    echo "--date       - wyświetla dzisiejszą datę"
    echo "--logs [N]   - tworzy N plików logx.txt (domyślnie 100)"
    echo "--help       - pokazuje tę pomoc"
    ;;
  *)
    echo "Nieznana opcja. Użyj --help"
    ;;
esac
