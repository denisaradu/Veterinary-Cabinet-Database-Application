<?php

require 'db.php';
require "ld.php";

$k_sql = "


SELECT * FROM `Login` WHERE `Username` = '" . $username . "'


    ";

$sql = $k_sql;
$result = $conn->query($sql);


if ($result->num_rows > 0) {

    // Datele sunt corecte
    okay('Test Succes',$result);

} else {

    // Datele nu sunt bune
    okay('Test OhNoV0',$result);

}