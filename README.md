# FishingApp

Aplikacja ma na celu wyeliminowanie potrzeby każdorazowego wypełniania papierowej wersji rejestru połowu ryb dla danej sesji wędkarskiej oraz ułatwienie zbierania danych z sesji.

Co roku w Polsce około 600 tys. wędkarzy wypełnia taki rejestr

Aby przetworzyć dane - przy optymistycznym założeniu, że jeden rejestr to 5 min pracy należy poświęcić 50 tys. roboczogodzin aby wpisać te dane do "excela".
Ilość kół wędkarskich w Polsce to około 2.5 tys. co daje 20 roboczogodzin w każdym kole.

<img src="https://i.imgur.com/jlBH2sz.png" alt="rejestr połowu ryb">

### Technologie użyte w projekcie:
- Spring Boot
- Spring Data JPA
- Spring Web MVC
- Spring Security
- Hibernate
- MySQL
- HTML/CSS/JavaScript

### Widok dla użytkownika


![user](https://github.com/KrzysztofGarus/FishingApp/assets/117105005/b79b8260-5cfd-4537-9a72-c6e7846de7c0)


### Widok dla administratora

![admin](https://github.com/KrzysztofGarus/FishingApp/assets/117105005/ac072298-9997-4722-9777-b4408542c412)

### Funkcje dla użytkownika:
- dashboard, czyli widok startowy przedstawia statystyki dla danego użytkownika oraz kalendarz sesji wędkarskich
- możliwość dodania / edycji / usuwania sesji wędkarskiej
- możliwość dodania / edycji / usuwania ryby w ramach danej sesji wędkarskiej
- widok mapy przedstawia lokalizację łowisk

### Funkcje dla administratora:
- dashboard, przedstawia statystyki i kalendarz dla wszystkich użytkowników oraz sesji wędkarskich
- wyświetlanie listy łowisk
- możliwość dodania / edycji / usuwania łowisk
- wyświetlanie szczegółów łowiska - statystyki dla danego łowiska
- wyświetlanie listy ryb
- możliwość dodania / edycji / nazw ryb
