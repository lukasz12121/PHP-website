<?php   /* wyloguj.php  */
session_start();
unset($_SESSION['imie']);
echo "<script>window.location = 'http://localhost/lab5k/index.php?page=brand&kto=user1'</script>";
?>
