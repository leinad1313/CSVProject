# CSVProject -- A web project that works with .csv files.

Dependencies:	
PHP 7.3, 	
Bootstrap 4.3.1,	 
Popper.js 1.16.0, 	
Javascript (JQuery) 3.4.1, 	
Canvasjs 1.8.1	

Firstly create a database called csv in MySQL then import the dump I provided. You also need to edit $this->_conn(mysqli_connect) in the /classes/Database.php.
	
On the basis of my webserver setup it may be nedded to rewrite the paths to all files in HTML and javascript context.	

----Table information----
In the table csvinformation you add 3 columns: Tabellenname(Varchar), Datum(Datetime), TabellenID(Int, Primary, AI).	

For the table csvdata you create 17 colums in following order:  Hauptartikelnr(Varchar), Artikelname(Varchar)
, Hersteller(Varchar), Beschreibung(Varchar), Materialangaben(Varchar), Geschlecht(Varchar), Produktart(Varchar)
, Ärmel(Varchar), Bein(Varchar), Kragen(Varchar), Herstellung(Varchar), Taschenart(Varchar), Grammatur(Varchar)
, Material(Varchar), Ursprungsland(Varchar), Bildname(Varchar), TabellenID(Int).	
	
--------------------------
