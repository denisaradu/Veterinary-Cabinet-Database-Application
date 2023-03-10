<?php

require 'db.php';
require "ld.php";

$k_sql = "


SELECT * FROM `Login` WHERE `Username` = '" . $username . "' AND `Password` = '" . $password . "'


    ";

$sql = $k_sql;
$result = $conn->query($sql);


if ($result->num_rows > 0) {

    // Datele sunt corecte
    okay('Conectare cu succes.',$result);

} else {

    // Datele nu sunt bune
    okay('Conectare esuata.',$result);

}