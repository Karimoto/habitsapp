## Aplikacja stworzona na zaliczenie laboratoriów z baz danych

Apka napisana koślawie we flasku, jest niewolna od bugów i brakuje jej wielu testów czy owyjątkowania, dlatego niezalecałbym jej używania... Ale działa! Miała w założeniu spełniać model-view-controller, ale udało mi się tylko zrobić model i view bez odseparowanego kontrolera. 

Skrypt zakładający schemat bazy znajduje się w db_schemas/habits_scheme.sql.

Skrypt ładujący dane do bazy znajduje się w db_schemas/data.sql.

Skrypt tworzący psedologiny i maile znajduję się w db_schemas/gen_users.py

### Jak włączyć aplikację? Ogólnie to raczej powinna działać na Windowsie, ale była włączana tylko na Linuxie, więc nie mam pojęcia jak to będzie wyglądać :(

będąc w katologu głównym aplikacji wyeksportować zmienną 

export FLASK_APP=app

i można włączyć za pomocą 

run flask





