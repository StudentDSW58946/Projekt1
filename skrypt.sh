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
esac
