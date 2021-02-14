<?php 
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "lab5";
  
  // Create connection
  $conn = new mysqli($servername, $username, $password, $dbname);
  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
  
  $sql = "SELECT title, content, level FROM pages";
  $result = $conn->query($sql);
  ?>