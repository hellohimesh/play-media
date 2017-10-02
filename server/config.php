<?php
header('Access-Control-Allow-Origin: *');

header('Access-Control-Allow-Methods: GET,POST');
header("Access-Control-Allow-Headers: X-Requested-With");
header('content-type: application/json; charset=utf-8');
header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');
header("Cache-Control: *");
header("Content-Type : text/plain");

ini_set('display_errors', 'On');
error_reporting(1);

$host = "localhost";
$username = "root";
$password = "";
$con = mysqli_connect($host,$username,$password,"playMedia") or die ("Could not connect");
mysqli_set_charset($con,"utf8");
?>
