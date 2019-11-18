<?php
require_once __DIR__ . "/Classes/Factory.php";

//Starts file export

$factory = new Factory();
$db = $factory->createDatabase();



    //Function that changes special chars(ä, ü, ..) to the windows native charset
    function convertToWindowsCharset($string)
    {
        $charset = mb_detect_encoding(
            $string,
            "UTF-8, ISO-8859-1, ISO-8859-15",
            true
        );

        $string = mb_convert_encoding($string, "Windows-1252", $charset);
        return $string;
    }


    $result = $db->exportCSV($_GET['id']);


    $delimiter = ";";
    $enclosure = '"';
    $escapeChar = "/";
    $filename = "CSV_Download " . date('Y-m-d') . ".csv";

    $f = fopen('php://memory', 'w');

    $fields = array('Hauptartikelnr', 'Artikelname', 'Hersteller', 'Beschreibung', 'Materialangaben', 'Geschlecht',
        'Produktart', convertToWindowsCharset('Ärmel'), 'Bein', 'Kragen', 'Herstellung', 'Taschenart', 'Grammatur', 'Material', 'Ursprungsland', 'Bildname');
    fputcsv($f, $fields, $delimiter, $enclosure, $escapeChar);


    if ($result->num_rows > 0) {

        //output each row of the data
        while ($row = $result->fetch_assoc()) {
            $lineData = array($row['Hauptartikelnr'], $row['Artikelname'], $row['Hersteller'], $row['Beschreibung'], $row['Materialangaben'],
                $row['Geschlecht'], $row['Produktart'], $row['Ärmel'], $row['Bein'], $row['Kragen'],
                $row['Herstellung'], $row['Taschenart'], $row['Grammatur'], $row['Material'], $row['Ursprungsland'],
                $row['Bildname']);

            foreach ($lineData as $key => $data) {
                $lineData[$key] = convertToWindowsCharset($data);
            }

            fputcsv($f, $lineData, $delimiter, $enclosure, $escapeChar);
        }


    }


    //move back to beginning of file
    fseek($f, 0);


    //set headers to download file
    header('Content-Type: text/csv');
    header('Content-Disposition: attachment; filename="' . $filename . '";');

    //output all remaining data on a file pointer
    fpassthru($f);


