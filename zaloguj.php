<?php    /* zaloguj.php  */
session_start();
?>
<?php
  if($_GET['kto'] <>"") 
  {
    $_SESSION['imie'] = $_GET['kto'];
  }else echo "Musisz podac imie";


  echo "<script>window.location = 'http://localhost/lab5k/index.php?page=brand&kto=user1'</script>";
?>
