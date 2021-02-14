<?php
session_start();
?>

<?php
/*
  if($_GET['kto'] <>""){
    $_SESSION['imie'] = $_GET['kto'];
  }*/
?>
<!DOCTYPE html>
<html lang="pl">
<head>
  <title>Menu</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="http://localhost/lab5k/index.php?page=brand">Brand</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="notactive"><a href="http://localhost/lab5k/index.php?page=0" id="site0">Python</a></li>
      <li class="notactive"><a href="http://localhost/lab5k/index.php?page=1" id="site1">PHP</a></li>
      <li class="notactive"><a href="http://localhost/lab5k/index.php?page=2" id="site2">HTML</a></li>
      <li class="notactive"><a href="http://localhost/lab5k/index.php?page=3" id="site3">AJAX</a></li>
      <li class="notactive"><a href="http://localhost/lab5k/index.php?page=4" id="site4">Web 3.0</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#" id="user">
        <?php
          include 'dbConnectUsers.php'; 
          global $level;
          if(isset($_SESSION['imie'])){

            $user_name ="";
            $user_login = $_SESSION['imie'];
            $sql = "SELECT name, level FROM users where login='$user_login'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
              // output data of each row
              while($row = $result->fetch_assoc()) {
                $user_name = $row["name"];
                $level = $row["level"];
  
              } 
            }
            
          if($user_name != ""){
            echo "Zalogowano jako: ".$user_name;
          }else{
            echo "<script>alert('Nie ma takiego użytkownika. Niezalogowano!');</script>";
            echo "Niezalogowano";
            unset($_SESSION['imie']);
          }
          }else{
            echo "Nie jesteś zalogowany";
          } 
        ?>
        </a></li>
      <li><a href="http://localhost/lab5k/login.php" id="log">
      <?php         
      if(isset($_SESSION['imie'])){
        echo "Wyloguj";
      }else{
        echo "Zaloguj";
      }
      ?></a></li>
    </ul>
  </div>
</nav>
<div class="container">
    <div>
    <?php include 'dbConnectPages.php'; 
          if($_GET['page'] == '0'){
            if($level == 3){
            if ($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                if($row["title"] == "Python"){
                  echo $row["content"];   
                }
              } 
            }
          }
          }else if($_GET['page'] == '1'){
            if($level == 3){
            if ($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                if($row["title"] == "PHP"){
                  echo $row["content"];   
                }
              } 
            }
          }
          }else if($_GET['page'] == '2'){
            if($level == 1){
            if ($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                if($row["title"] == "HTML"){
                  echo $row["content"];   
                }
              } 
            }
          }
          }else if($_GET['page'] == '3'){
            if($level == 2){
            if ($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                if($row["title"] == "AJAX"){
                  echo $row["content"];   
                }
              } 
            }
          }
          }else if($_GET['page'] == '4'){
            if($level == 0){
            if ($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                if($row["title"] == "Web 3.0"){
                  echo $row["content"];   
                }
              } 
            }
          }
          }
    ?>
    </div>
</div>
</body>
</html>