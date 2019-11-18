<?php require_once __DIR__ . "/classes/Factory.php";


$factory = new Factory();

$eo = $factory->createEchoOutput();
$db = $factory->createDatabase();
$informationArray = $db->getAllCVSInformation();


if (isset($_POST["import"])) {

    $fileName = $_FILES["file"]["tmp_name"];

    if ($_FILES["file"]["size"] > 0) {

        $file = fopen($fileName, "r");
        fgetcsv($file);

        $db->uploadCSV($file, $_POST['name']);

       $informationArray = $db->getAllCVSInformation();

        echo "<script type='text/javascript'>addToast('/svg/check.svg', 'CSV Upload erfolgreich!', 'Sie haben ihre CSV Datei erfolgreich geuploaded.')</script>";

    } else {
        echo "<script type='text/javascript'>addToast('/svg/delete.svg', 'Ups!', 'Upload fehlgeschlagen, bitte versuche es erneut.')</script>";
    }
}

$selectOptions = '';

foreach ($informationArray as $infos) {

    $selectOptions .= <<<HTML
<option value="{$infos['2']}">{$infos['0']} {$infos['1']}</option>
HTML;

}


?>

            <!DOCTYPE html>
            <html lang="de">
            <head>
                <meta charset="UTF-8">
                <title>CSV Import/Export</title>
                <script src="/node_modules/popper.js/dist/popper.min.js"></script>
                <script src="/node_modules/jquery/dist/jquery.min.js"></script>
                <script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
                <script type='text/javascript' src='/node_modules/canvasjs/dist/canvasjs.min.js'></script>
                <link rel="stylesheet" type="text/css" href="/node_modules/bootstrap/dist/css/bootstrap.css">
                <link rel="stylesheet" type="text/css" href="/custom.css">
                <link href="/assets/style.css" rel="stylesheet">
                <link href="/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
                <script src="/assets/js/html5shiv.min.js"></script>
                <script type='text/javascript' src='/js/CVSSystem.js'></script>
                <!--Implementation of my own .js files -->
                <script>
                    //Loads chart data from PHP and renders the table
                    var chart = function () {

                        if(onOff == true) {
                            document.getElementsByTagName('header')[0].style.visibility = 'hidden';
                            $('.canvasjs-chart-container').remove();
                            onOff = false;
                            return;
                            }

                        document.getElementsByTagName('header')[0].style.visibility = 'visible';

                        if(!tableID) {
                            addToast('/svg/delete.svg', 'Kann Chartdarstellung nicht laden!', 'Bitte wählen sie eine Tabelle aus.');
                            return
                            }


                            setTimeout(function () {

                                var chart = new CanvasJS.Chart("chartContainer", {
                                    title: {
                                        text: "Artikel"
                                    },
                                    axisY:{
                                        minimum: 0,
                                        valueFormatString: "#.'%'"
                                    },
                                    data: [
                                        {
                                            type: "column",
                                            yValueFormatString: "##0.00\"%\"",
                                            toolTipContent: "{label} {y}",
                                            dataPoints: <?php echo json_encode($db->createChart(), JSON_NUMERIC_CHECK);?>
                                    }
                                            ]
                                        });
                                        chart.render();

                                        window.dispatchEvent(new Event('resize'));
                            onOff = true;
                        }, 200);
                    }
                </script>
            </head>
            <body>
                <header class="fixed-top">
                <div id="collapseChart">
                    <div id="chartContainer"></div>
                </div>
                </header>
    <!-- Defines the wrapper for all toasts -->
            <div aria-live="polite" aria-atomic="true" class="toast-wrapper">
              <!-- Position -->
              <div class="toast-position" id="toast-position">
                <!-- Toasts here -->
              </div>
            </div> 
            <!-- Defines the modal that is opening by pressing CSV Import -->
                    <div class="modal fade" id="CSVImport" tabindex="-1" role="dialog" aria-labelledby="CSVImportCenterTitle" aria-hidden="true">
                      <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="CSVImportCenterTitle">CSV Import</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                                <div class="input-row">
                                    <form class="form-horizontal" action="" method="post" name="uploadCSV" id='CSVImport' enctype="multipart/form-data">
                                    <label class="col-md-4 control-label form-text"><u>Tabellenname</u></label> 
                                    <input class="input-group-text input-left" type="text" name="name" pattern="[A-Za-z0-9]+" required>
                                    <label id="fileLabel" class="col-md-4 control-label form-text"></label>
                                    <input onchange="addFileName(this.value)" class="input-group-text filePicker" type="file" name="file" id="file" accept=".csv">
                                    <br/>
                                </div>
                                <div id="error"></div>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Schließen</button>
                            <button type="submit" id="submit" name="import" class="btn btn-success btn-submit">Importieren</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
<!-- Defines the table view -->        
            <main>
                    <table id='loadData'>
                    <thead>
                    <tr>
                        <th></th>
                        <th>Hauptartikelnr</th>
                        <th>Artikelname</th>
                        <th>Hersteller</th>
                        <th>Beschreibung</th>
                        <th>Materialangaben</th>
                        <th>Geschlecht</th>
                        <th>Produktart</th>
                        <th>Ärmel</th>
                        <th>Bein</th>
                        <th>Kragen</th>
                        <th>Herstellung</th>
                        <th>Taschenart</th>
                        <th>Grammatur</th>
                        <th>Material</th>
                        <th>Ursprungsland</th>
                        <th>Bildname</th>
                    </tr>
                    </thead>
                    </table>
            </main>
<!-- Defines the Navbar at the bottom -->
        <footer>
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-bottom">
          <a class="navbar-brand" href="#">
            <img src="/svg/Microsoft_Excel_Logo.svg" width="30" height="30" class="d-inline-block align-top" alt="">
            Importer Exporter
            </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>       
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="navbar-nav">
                <button class="btn btn-dark rounded btn-nav" type="button" data-toggle="modal" data-target="#CSVImport">CSV Import</button>
                <button class="btn btn-dark rounded btn-nav" onclick="if(tableID){window.location ='/export.php?id='+tableID}"> CSV Export</button>
                <button class="btn btn-dark rounded btn-nav" type="button" onclick="
                createTableAjax(1);
                ">Edit Mode</button>
                <button class="btn btn-dark rounded btn-nav" onclick="chart()" role="button" >Chart</button>
                <select onchange="
                 createTableAjax(0);
                " id="tablePicker" type="select" class="input-group-text" name="tableID">
                <option value="">--keine--</option>
                    <?php echo $selectOptions;?>
                </select>
            </div>
          </div>
        </nav>
        </footer>
        </body>



