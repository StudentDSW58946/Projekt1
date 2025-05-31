Narzędzia w branży IT - Lab 4
Podstawa praca z GIT

Projekt: Cz.1
Każdy myślnik należy wykonywać na nowym branchu. Po zakończeniu
pracy na branchu, należy go zmergować z głównym branchem.
„git checkout -b nowyBranch”
git add plik; git commit -m””; git push;
na koniec:
git checkout głównyBranch; git merge taskBranch;
- „skrypt.sh --date” wyświetli dzisiejszą datę
- utworzyć plik .gitignore, który będzie ignorować wszystkie pliki
zawierające w nazwie ciąg znaków „log”
- „skrypt.sh --logs” utworzy automatycznie 100 plików logx.txt, x – numer
pliku od 1 – 100, w każdym pliku należy wpisać jego nazwę, nazwę
skryptu który go utworzył i datę
- „skrypt.sh --logs 30” utworzenie automatycznie 30 plików, analogicznie
jak wyżej, ale z obsługą argumentu liczby plików
- „skrypt.sh --help” wyświetlenie wszystkich dostępnych opcji
- utworzyć Tag v1.0 do aktualnej wersji skryptu/ commita na głównej
gałęzi
Projekt: Cz.2
- do flag z podwójnym -, dodać flagi z pojedyńczym -:
--help -h
--logs -l
--date -d
- zmodyfikować help o nowe flagi, ale go nie mergować
- „skrypt.sh --init” klonuje całe repozytorium do katalogu w którym został
uruchomiony oraz ustawia ścieżkę w zmiennej środowiskowej PATH
- to samo co wyżej, ale „skrypt.sh --error 30” tworzy errorx/errorx.txt, bez
liczby ma domyślne tworzyć 100 plików, dodać też flagę „skrypt.sh -e 30”
- modyfikacja .gitignore
- dokończyć opcje --help, zrobić rebase i merge.
