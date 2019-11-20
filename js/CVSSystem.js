/**
 * @type {string}
 */
var tableID = '';

/**
 * @type {int}
 */
var start = 0;

/**
 * @type {string}
 */
var action = 'inactive';

/**
 *
 * @type {boolean}
 */
var edit;


/**
 * @var {int}
 */
var toastID = 1;

/**
 * @type {boolean}
 */
var onOff;

/**
 * Validates if the given file is a .csv file and if not displays a warning
 */
jQuery(
    function () {
        $("#CSVImport").on(
            "submit",
            function () {
                var fileType = ".csv";
                var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+("
                    + fileType + ")$");
                if (!regex.test($("#file").val().toLowerCase())) {
                    $('#error').append('<a class="a-red">Bitte laden sie nur .csv Dateien hoch!</a>');
                    addToast('/svg/delete.svg', 'Ups!', 'Upload fehlgeschlagen, bitte versuche es erneut.')
                    return false;
                }
                return true;
            });
    });


/**
 * Fucntion that adds toats with given image, message and title
 * @param {string} imagePath
 * @param {string} title
 * @param {string} message
 */
function addToast(imagePath, title, message) {

    if (document.getElementsByClassName("toast")) {
        toastID = document.getElementsByClassName("toast").length + 1;
    }

    $('<div class="toast " role="alert" aria-live="assertive" aria-atomic="true" id="' + toastID + '" data-delay="2500">\n' +
        '      <div class="toast-header">\n' +
        '        <img src="' + imagePath + '" class="rounded mr-2" alt="...">\n' +
        '        <strong class="mr-auto">' + title + '</strong>\n' +
        '        <button type="button" class="ml-2 mb-1 close" onclick="$(this).closest(\'.toast\').remove();" data-dismiss="toast" aria-label="Close">\n' +
        '          <span aria-hidden="true">&times;</span>\n' +
        '        </button>\n' +
        '      </div>\n' +
        '      <div class="toast-body">\n' +
        message +
        '      </div>\n' +
        '    </div>').appendTo('#toast-position');

    $('#' + toastID).toast('show');
    //Option for deleting Toast completely
    setTimeout(function () {
        $('#' + toastID).remove();
    }, 2700)

}

//Adds the filename to the file upload after selecting one
function addFileName(name) {
    $('#fileLabel').children('a').remove();
    var path = name.split("fakepath");
    $('#fileLabel').append("<a>"+path[1]+"</a>");
}


/**
 * Ajax Post to load the data from MySQL
 * @param {int} limit
 * @param {int} start
 * @param {string} tableID
 * @param {boolean} edit
 */
function loadData(limit, start, tableID, edit) {

    $.ajax({
        url: "fetch.php",
        method: "POST",
        data: {limit: limit, start: start, tableID: tableID, edit: edit},
        cache: false,
        success: function (data) {
            $('#loadData').append(data);
            if (data === '') {
                addToast('/svg/delete.svg', 'Keine Daten gefunden!', 'Keine Daten mehr vorhanden.');
                action = 'active';
            } else {
                addToast('/svg/check.svg', 'Daten wurden erfolgreich geladen', 'Sie können nun mit den geladenen Daten arbeiten.');
                action = 'inactive'
            }
        }
    });

}

/**
 *
 * @param {boolean} isEdit
 */
function createTableAjax(isEdit) {

    action = 'active';

    edit = isEdit;

    start = 0;

    /**
     * @type{int}
     */
    var limit = 30;

    /**
     * @type {string}
     */
    tableID = document.getElementById('tablePicker').options[document.getElementById('tablePicker').selectedIndex].value;

    /**
     * @type {HTMLElement}
     */
    var tables = document.getElementsByTagName('tbody');

    while (document.getElementsByTagName('tbody').length >= 1) {
        tables[0].parentNode.removeChild(tables[0]);
    }

    if (!tableID) {
        document.getElementsByTagName('table')[0].style.visibility = 'hidden';
        return;
    } else {
        document.getElementsByTagName('table')[0].style.visibility = 'visible';
    }
    

    action = 'inactive';

    if (action === 'inactive') {
        action = 'active';
        loadData(limit, start, tableID, edit)
    }

    $(window).scroll(function () {
        if ($(window).scrollTop() + $(window).height() === $(document).height() && action === 'inactive') {
            action = 'active';
            start = start + limit;
            setTimeout(function () {
                loadData(limit, start, tableID, edit)
            }, 1000)
        }
    });


}


/**
 * @param {HTMLElement} button
 * Gets the data from the table row you edited and sends it to PHP for uploading
 */
function SaveRowData(button) {

    // Order of the created array
    // 1 empty
    // 2 Hauptartikelnr
    // 3 Artikelname
    // 4 Hersteller
    // 5 Beschreibung
    // 6 Materialangaben
    // 7 Geschlecht
    // 8 Produktart
    // 9 Aermel
    // 10 Bein
    // 11 Kragen
    // 12 Herstellung
    // 13 Taschenart
    // 14 Grammatur
    // 15 Material
    // 16 Ursprungsland
    // 17 Bildname
    // 18 TabellenID

    /**
     *
     * @type {Array}
     */
    var inputs = [];
    /**
     *
     * @type {JQuery<HTMLElement> | jQuery.fn.init | jQuery | HTMLElement}
     */
    var tr = $(button).closest('tr');


    //All inputs from the table
    $(tr).children('td').each(function () {
        inputs.push($(this).children(".input-custom").val());
    });

    var Hauptartikelnr = inputs[1];
    var Artikelname = inputs[2];
    var Hersteller = inputs[3];
    var Beschreibung = inputs[4];
    var Materialangaben = inputs[5];
    var Geschlecht = inputs[6];
    var Produktart = inputs[7];
    var Aermel = inputs[8];
    var Bein = inputs[9];
    var Kragen = inputs[10];
    var Herstellung = inputs[11];
    var Taschenart = inputs[12];
    var Grammatur = inputs[13];
    var Material = inputs[14];
    var Ursprungsland = inputs[15];
    var Bildname = inputs[16];


    $.ajax({
        url: "save.php",
        method: "POST",
        data: {
            Hauptartikelnr: Hauptartikelnr,
            Artikelname: Artikelname,
            Hersteller: Hersteller,
            Beschreibung: Beschreibung,
            Materialangaben: Materialangaben,
            Geschlecht: Geschlecht,
            Produktart: Produktart,
            Aermel: Aermel,
            Bein: Bein,
            Kragen: Kragen,
            Herstellung: Herstellung,
            Taschenart: Taschenart,
            Grammatur: Grammatur,
            Material: Material,
            Ursprungsland: Ursprungsland,
            Bildname: Bildname,
            TabellenID: tableID
        },
        cache: false,
        success: function (data) {
            if (data === '') {
                addToast('/svg/check.svg', 'Daten wurden erfolgreich gespeichert', 'Sie können nun mit den gespeicherten Daten arbeiten.');
            } else {
                addToast('/svg/delete.svg', 'Daten konnten nicht übertragen werden!', 'Bitte versuchen sie die Daten erneut zu speichern.');
            }
        }
    });

}
