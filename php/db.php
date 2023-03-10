<?php

ob_start();

$dbServername = "sql419.main-hosting.eu";
$dbUsername = "u954699920_denisavet";
$dbPassword = "/NodeRed2351*+K";
$dbName = "u954699920_denisavet";

// Create connection
$conn = new mysqli($dbServername, $dbUsername, $dbPassword, $dbName);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
} else {
  // echo('Success');
}


