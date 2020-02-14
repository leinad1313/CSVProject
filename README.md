# CSVProject -- A web project that works with .csv files.

Dependencies:	
PHP 7.3, 	
Bootstrap 4.3.1,	 
Popper.js 1.16.0, 	
Javascript (JQuery) 3.4.1, 	
Canvasjs 1.8.1	

Create a database called csv in MySQL then import the dump I provided. You also need to edit $this->_conn(mysqli_connect) in the /classes/Database.php.

I set this up on an XAMPP Server so there can be issues with paths and related elements.

--------------------------
# Table information (only needed if an import was unsuccessful)	
	
In the table csvinformation are 3 columns: Tabellenname(Varchar), Datum(Datetime), TabellenID(Int, Primary, AI).	

Table csvdata 17 colums in following order:  Hauptartikelnr(Varchar), Artikelname(Varchar)
, Hersteller(Varchar), Beschreibung(Varchar), Materialangaben(Varchar), Geschlecht(Varchar), Produktart(Varchar)
, Ärmel(Varchar), Bein(Varchar), Kragen(Varchar), Herstellung(Varchar), Taschenart(Varchar), Grammatur(Varchar)
, Material(Varchar), Ursprungsland(Varchar), Bildname(Varchar), TabellenID(Int).	
	
--------------------------
