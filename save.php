<?php
// File that handles all lazy loading from the Database
require_once __DIR__ . "/Classes/Factory.php";

$factory = new Factory();
$db = $factory->createDatabase();

if (isset($_POST['Hauptartikelnr'])) {

    $saveArray = [
        $_POST['Hauptartikelnr'],
        $_POST['Artikelname'],
        $_POST['Hersteller'],
        $_POST['Beschreibung'],
        $_POST['Materialangaben'],
        $_POST['Geschlecht'],
        $_POST['Produktart'],
        $_POST['Aermel'],
        $_POST['Bein'],
        $_POST['Kragen'],
        $_POST['Herstellung'],
        $_POST['Taschenart'],
        $_POST['Grammatur'],
        $_POST['Material'],
        $_POST['Ursprungsland'],
        $_POST['Bildname'],
        $_POST['TabellenID']
    ];


    $db->updateRowData($saveArray);

}