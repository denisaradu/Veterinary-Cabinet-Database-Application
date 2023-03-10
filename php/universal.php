<?php

require 'db.php';

$receivedData = base64_decode($_GET['data']);
// $receivedData = base64_decode($receivedData);

// echo $receivedData;
// exit; /*

// $receivedData = json_decode(atob($_GET['data']), true); //decode the base64 string

// var_dump($receivedData);
// exit; /*

// do the DB request
$k_sql = $receivedData;

$sql = $k_sql;

try {
    $result = $conn->query($sql);
    // echo "Record inserted successfully";
    // okay('Inregistrare noua adaugata cu succes',$result);
    // $okay = 'Inregistrare noua adaugata cu succes',$result
    $success = true;
}
catch (exception $e) {
    echo "Error: ". mysqli_error($conn);
    echo "\n";
    $result = $conn->query($sql);
    // okay('Eroare la adaugarea unei noi inregistrari',$result);
    // $okay = 'Inregistrare noua adaugata cu succes',$result
    $success = false;
}

// send a response back to the client
$response = ['status' => 'success'];
// $response['okay'] = $okay;
// $response['result'] = $result;
$response['success'] = $success;
if ($result->num_rows > 0) {
    $response['results'] = [];
    for ($i = 0; $i < $result->num_rows; $i++) {
        $response['result'] = $result->fetch_assoc();
        array_push($response['results'], $response['result']);
    }
    $response['result'] = $response['results'][0];
} else { 
    $response['result'] = null;
    $response['results'] = null;
};
if ( $response['result'] == null ) {
    $response['success'] = false;
}
echo json_encode($response);

// */

mysqli_close($conn); 