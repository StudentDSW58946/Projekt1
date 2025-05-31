#!/bin/bash

# Funkcja pomocnicza do wyświetlania pomocy
show_help() {
  cat << EOF
Dostępne opcje:

--help, -h        Wyświetla tę pomoc
--date, -d        Wyświetla dzisiejszą datę
--logs, -l        Tworzy 100 plików logx.txt
--logs N, -l N    Tworzy N plików logx.txt
--init            Klonuje repozytorium i ustawia PATH
--error, -e       Tworzy 100 plików errorx/errorx.txt
--error N, -e N   Tworzy N plików errorx/errorx.txt
EOF
}

# Funkcja do obsługi flagi --date
handle_date() {
  echo "Dzisiejsza data: $(date)"
}

# Funkcja do obsługi flagi --logs
handle_logs() {
  local num_files=${1:-100}
  for i in $(seq 1 "$num_files"); do
    filename="log${i}.txt"
    echo "Nazwa pliku: $filename" > "$filename"
    echo "Skrypt: $0" >> "$filename"
    echo "Data: $(date)" >> "$filename"
  done
}

# Funkcja do obsługi flagi --init
handle_init() {
  git clone https://github.com/twoja-nazwa-uzytkownika/projekt1.git
  cd projekt1 || exit
  echo "$(pwd)" >> ~/.bashrc
  source ~/.bashrc
}

# Funkcja do obsługi flagi --error
handle_error() {
  local num_files=${1:-100}
  mkdir -p errorx
  for i in $(seq 1 "$num_files"); do
    filename="errorx/error${i}.txt"
    echo "Nazwa pliku: $filename" > "$filename"
    echo "Skrypt: $0" >> "$filename"
    echo "Data: $(date)" >> "$filename"
  done
}

# Główna logika skryptu
while [[ $# -gt 0 ]]; do
  case $1 in
    --help|-h)
      show_help
      exit 0
      ;;
    --date|-d)
      handle_date
      exit 0
      ;;
    --logs|-l)
      shift
      handle_logs "$1"
      exit 0
      ;;
    --init)
      handle_init
      exit 0
      ;;
    --error|-e)
      shift
      handle_error "$1"
      exit 0
      ;;
    *)
      echo "Nieznana opcja: $1"
      show_help
      exit 1
      ;;
  esac
done

# Jeśli nie podano żadnej flagi
echo "Brak flagi. Użyj --help lub -h, aby wyświetlić dostępne opcje."
