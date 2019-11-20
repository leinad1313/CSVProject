<?php

// Class that handles all MySQL calls
class Database
{
    /**
     * @var false|mysqli
     */
    private $_conn;

    /**
     * @var string
     */
    private $_tableID;


    protected function checkDatabase(): void
    {
        if (!$this->_conn = mysqli_connect("localhost", "root", "", "cvs")) {
            die("
            <link rel='stylesheet' type='text/css' href='/node_modules/bootstrap/dist/css/bootstrap.css'>
            <div class='alert alert-danger' role='alert'>
              <a>Datenbank ist nicht erreichbar, bitte richten sie die Datenbank ein! Ohne Datenbank zugriff lässt sich diese Webseite nicht aufrufen.</a>
            </div>
            ");
        }
    }

    /**
     * @param $file
     * @param string $name
     * Transaction does not function
     */
    public function uploadCSV($file, string $name): void
    {

        $date = date('Y-m-d H:i:s');
        $this->checkDatabase();

        $sqlInsert = "INSERT INTO cvsinformation (Tabellenname, Datum) values ('{$name}', '{$date}')";
        $result = mysqli_query($this->_conn, $sqlInsert);

        $last_id = $this->_conn->insert_id;

        while (($column = fgetcsv($file, 100000, ";", '"', "/")) !== FALSE) {
            $sqlInsert = "INSERT into cvsdata (TabellenID ,Hauptartikelnr, Artikelname, Hersteller, Beschreibung, Materialangaben, Geschlecht, Produktart, Ärmel, Bein, Kragen, Herstellung, Taschenart, Grammatur, Material, Ursprungsland, Bildname)
                   values ('" . $last_id . "','" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "','" . $column[4] . "','" . $column[5] . "','" . $column[6] . "','" . $column[7] . "','" . $column[8] . "','" . $column[9] . "','" . $column[10] . "','" . $column[11] . "','" . $column[12] . "','" . $column[13] . "','" . $column[14] . "','" . $column[15] . "')";
            mysqli_query($this->_conn, $sqlInsert);

        }


    }

    /**
     * @return array
     */
    public function getAllCVSInformation(): array
    {

        $this->checkDatabase();
        $this->_conn->begin_transaction(MYSQLI_TRANS_START_READ_ONLY);
        $query = "SELECT * FROM cvsinformation";
        $result = mysqli_query($this->_conn, $query)->fetch_all();
        $this->_conn->close();

        return $result;
    }



    /**
     * @param string $tableID
     * @param string $search
     * @return bool|mysqli_result
     */
    public function createTable(string $tableID, string $search)
    {
        $this->checkDatabase();
        $this->_conn->begin_transaction(MYSQLI_TRANS_START_READ_ONLY);

        if (!$search) {
            $query = "SELECT * FROM cvsdata WHERE TabellenID = '{$tableID}' ORDER BY 'Hauptartikelnr' DESC LIMIT {$_POST['start']}, {$_POST['limit']}";
        }
        else {
            //Not working for now
            return
        }
        $result = mysqli_query($this->_conn, $query);
        $this->_conn->close();
        $this->_tableID = $tableID;

        return $result;
    }

    /**
     * @param array $saveArray
     */
    public function updateRowData(array $saveArray): void
    {

        $this->checkDatabase();


        $sqlInsert = "UPDATE cvsdata SET Artikelname = '{$saveArray[1]}', Hersteller = '{$saveArray[2]}', Beschreibung = '{$saveArray[3]}',
                   Materialangaben = '{$saveArray[4]}', Geschlecht = '{$saveArray[5]}', Produktart = '{$saveArray[6]}', Ärmel = '{$saveArray[7]}', Bein = '{$saveArray[8]}', Kragen = '{$saveArray[9]}'
                   , Herstellung = '{$saveArray[10]}', Taschenart = '{$saveArray[11]}', Grammatur = '{$saveArray[12]}', Material = '{$saveArray[13]}', Ursprungsland = '{$saveArray[14]}', Bildname = '{$saveArray[15]}'
                   WHERE TabellenID = '{$saveArray[16]}' AND Hauptartikelnr = '{$saveArray[0]}'";

        mysqli_query($this->_conn, $sqlInsert);


    }

    /**
     * @param string $id
     * @return bool|mysqli_result
     */
    public function exportCSV(string $id)
    {

        $this->checkDatabase();
        return $result = $this->_conn->query("SELECT * FROM cvsdata WHERE TabellenID = '{$id}' ORDER BY Hauptartikelnr DESC");

    }

    /**
     * @return array
     */
    public function createChart()
    {
        $this->checkDatabase();
        $this->_conn->begin_transaction(MYSQLI_TRANS_START_READ_ONLY);
        $query = "SELECT Produktart FROM cvsdata WHERE TabellenID = '{$this->_tableID}'";
        $result = mysqli_query($this->_conn, $query);
        $this->_conn->close();

        function array_icount_values($arr, $lower = true)
        {
            $arr2 = array();
            if (!is_array($arr['0'])) {
                $arr = array($arr);
            }
            foreach ($arr as $k => $v) {
                foreach ($v as $v2) {
                    if ($lower == true) {
                        $v2 = strtolower($v2);
                    }
                    if (!isset($arr2[$v2])) {
                        $arr2[$v2] = 1;
                    } else {
                        $arr2[$v2]++;
                    }
                }
            }
            return $arr2;
        }

        $countArray = [];

        if ($result) {
            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_array($result)) {
                    $countArray[] = $row;
                }
            }
        }


        $resultCount = array_icount_values($countArray);

        $numberOfProductNames = sizeof($resultCount);

        $numberOfProducts = 0;
        foreach ($resultCount as $value) {
            $numberOfProducts += $value;
        }

        $dataPoints = [];

        foreach ($resultCount as $key => $value) {
            $percent = ($numberOfProductNames/$numberOfProducts) * $value;
            $dataPoints[] = ["y" => $percent, "label" => $key];
        }


        return $dataPoints;
    }


}
