<?php

header('Content-Type: text/html; charset=utf-8');
$servername = "localhost:3308";
$username = "root";
$password = "";
$basename = "projekt";

$dbc = mysqli_connect($servername, $username, $password, $basename) or die('Error 
connecting to MySQL server.'.mysqli_connect_error());
mysqli_set_charset($dbc, "utf8");

if ($dbc) {
 echo "";
}else{
    echo "Error";
}
?>