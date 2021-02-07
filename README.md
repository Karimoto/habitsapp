## Aplikacja stworzona na zaliczenie laboratoriów z baz danych

Apka napisana koślawie we flasku, jest niewolna od bugów i brakuje jej wielu testów czy owyjątkowania, dlatego niezalecałbym jej używania... Ale działa! Miała w założeniu spełniać model-view-controller, ale udało mi się tylko zrobić model i view bez odseparowanego kontrolera. 

Skrypt zakładający schemat bazy znajduje się w db_schemas/habits_scheme.sql.
Skrypt ładujący dane do bazy znajduje się w db_schemas/data.sql.

### Jak włączyć aplikację? Ogólnie to raczej powinna działać na Windowsie, ale była włączona tylko na Linuxie

export FLASK_APP=app
run flask





