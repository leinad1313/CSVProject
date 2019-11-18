<?php
// File that handles all lazy loading from the Database
require_once __DIR__ . "/classes/Factory.php";
require_once __DIR__ . "/classes/Database.php";

$factory = new Factory();
$db = $factory->createDatabase();

if (isset($_POST["limit"], $_POST["start"], $_POST["tableID"], $_POST["edit"])) {

    $result = $db->createTable($_POST["tableID"]);

    if ($_POST["edit"] == true) {
        if ($result) {
            if (mysqli_num_rows($result) > 0) {

                while ($row = mysqli_fetch_array($result)) {


                    echo <<<HTML
            <tbody>
            <tr>
            <td><button type='button' id='submit' name='save' class='btn btn-dark' onclick='
            SaveRowData(this)
            '>Speichern</button></td>
            <td><input class='input-custom input-group-lg' name='Hauptartikelnr'  value='{$row['Hauptartikelnr']}' readonly='readonly'></td>
            <td><input class='input-custom input-group-lg' name='Artikelname' value='{$row['Artikelname']}'></td>
            <td><input class='input-custom input-group-lg' name='Hersteller' value='{$row['Hersteller']}'></td>
            <td><input class='input-custom input-group-lg' name='Beschreibung' value='{$row['Beschreibung']}'></td>
            <td><input class='input-custom input-group-lg' name='Materialangaben' value='{$row['Materialangaben']}'></td>
            <td><input class='input-custom input-group-lg' name='Geschlecht' value='{$row['Geschlecht']}'></td>
            <td><input class='input-custom input-group-lg' name='Produktart' value='{$row['Produktart']}'></td>
            <td><input class='input-custom input-group-lg' name='Ärmel' value='{$row['Ärmel']}'></td>
            <td><input class='input-custom input-group-lg' name='Bein' value='{$row['Bein']}'></td>
            <td><input class='input-custom input-group-lg' name='Kragen' value='{$row['Kragen']}'></td>
            <td><input class='input-custom input-group-lg' name='Herstellung' value='{$row['Herstellung']}'></td>
            <td><input class='input-custom input-group-lg' name='Taschenart' value='{$row['Taschenart']}'></td>
            <td><input class='input-custom input-group-lg' name='Grammatur' value='{$row['Grammatur']}'></td>
            <td><input class='input-custom input-group-lg' name='Material' value='{$row['Material']}'></td>
            <td><input class='input-custom input-group-lg' name='Ursprungsland' value='{$row['Ursprungsland']}'></td>
            <td><input class='input-custom input-group-lg' name='Bildname' value='{$row['Bildname']}'></td>
            </tr>
            </tbody>

HTML;
                }
            }
        }

    } else {

        if ($result) {
            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_array($result)) {


                    echo <<<HTML
            <tbody>    
            <tr>
            <td></td>       
            <td>{$row['Hauptartikelnr']}</td>
            <td>{$row['Artikelname']}</td>
            <td>{$row['Hersteller']}</td>
            <td>{$row['Beschreibung']}</td>
            <td>{$row['Materialangaben']}</td>
            <td>{$row['Geschlecht']}</td>
            <td>{$row['Produktart']}</td>
            <td>{$row['Ärmel']}</td>
            <td>{$row['Bein']}</td>
            <td>{$row['Kragen']}</td>
            <td>{$row['Herstellung']}</td>
            <td>{$row['Taschenart']}</td>
            <td>{$row['Grammatur']}</td>
            <td>{$row['Material']}</td>
            <td>{$row['Ursprungsland']}</td>
            <td>{$row['Bildname']}</td>
            </tr>  
            </tbody>
HTML;
                }
            }
        }
    }


}


