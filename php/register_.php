<?php

require 'db.php';
require "ld.php";

$k_sql = "


UPDATE `users`
ADD
    `k_status` = '". $username ."'
WHERE
    `user_id` = '". $parola ."'


    ";

$sql = $k_sql;
$result = $conn->query($sql);


