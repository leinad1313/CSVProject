# CSVProject -- A web project that works with .csv files.

Dependencies:
PHP 7.3, 
Bootstrap 4.3.1, 
Popper.js 1.16.0, 
Javascript (JQuery) 3.4.1, 
Canvasjs 1.8.1

You need the MySQL dump in the 'MySQL dump' Folder and edit $this->_conn(mysqli_connect) in the 
/classes/Database.php. If it doesn't work you need to create two MySQL tables one called cvsdata and the other 
called cvsinformation.

In the table cvsinformation you add 3 columns: Tabellenname(Varchar), Datum(Datetime), TabellenID(Int, Primary, AI).

For the table cvsdata you create 17 colums in following order:  Hauptartikelnr(Varchar), Artikelname(Varchar)
, Hersteller(Varchar), Beschreibung(Varchar), Materialangaben(Varchar), Geschlecht(Varchar), Produktart(Varchar)
, Ärmel(Varchar), Bein(Varchar), Kragen(Varchar), Herstellung(Varchar), Taschenart(Varchar), Grammatur(Varchar)
, Material(Varchar), Ursprungsland(Varchar), Bildname(Varchar), TabellenID(Int).

On the basis of my webserver setup it may be nedded to rewrite the paths to all files in HTML and javascript context.
