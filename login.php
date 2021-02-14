<?php  /* plik sesja.php */
session_start();
	//session_register('imie');  //rejestrowanie zmiennej
function pokaz_logowanie()
{
    echo "<form action = \"zaloguj.php\" method=\"get\" enctype=\"multipart/form-data\">\n";
    echo "<p><input type=\"text\" value=\"user1\" name = \"kto\"></p>\n";
    echo "<p><input class=\"btn btn-primary\" type=\"submit\" value=\"Zaloguj się\" ></p>\n";
    echo "</form>\n";

}
?>
<!DOCTYPE html>
<html lang="pl">
<head>
  <title>Logowanie</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet"  href="style.css">
</head>
<body>
    <div class="center">
        <div class="col-md-8 col-md-offset-2 text-center your-class">
            <div class="panel panel-default">
            <?php
                if(!isset($_SESSION['imie'])) {
                    pokaz_logowanie();
                }
                else {
                    echo "Czy na pewno wylogować?<br><br>";
                    echo "<form action = \"wyloguj.php\" method=\"get\" enctype=\"multipart/form-data\">\n";
                    echo "<input class=\"btn btn-primary\" type = \"submit\" name = \"wylog\" value = \"Wyloguj\">\n";
                }
            ?>
            </div>
        </div>  
    </div>
</body>
</html>