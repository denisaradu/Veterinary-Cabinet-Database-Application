<?php

require 'db.php';
require "ld.php";

$k_sql = "

INSERT INTO `Animal` (`Nume`, `Varsta`, `Rasa`, `Specie`, `Microcip`, `Sex`, `Culoare`) VALUES ('" . $nume . "','" . $varsta . "','" . $rasa . "','" . $specie . "','" . $microcip . "','" . $sex . "','" . $culoare . "')


    ";

$sql = $k_sql;

try {
    $result = $conn->query($sql);
    echo "Record inserted successfully";
    okay('Inregistrare noua adaugata cu succes',$result);
}
catch (exception $e) {
    echo "Could not insert record: ". mysqli_error($conn);
    okay('Eroare la adaugarea unei noi inregistrari',$result);
}

/*
if (!mysqli_error($conn)) {

    echo "Record inserted successfully";  
    okay('Inregistrare noua adaugata cu succes',$result);
    
    }else{  
    
    echo "Could not insert record: ". mysqli_error($conn);
    okay('Eroare la adaugarea unei noi inregistrari',$result);
    
    }

/*
if(mysqli_query($conn, $sql)){  

   echo "Record inserted successfully";  
   okay('Inregistrare noua adaugata cu succes',$result);
   
   }else{  
   
   echo "Could not insert record: ". mysqli_error($conn);  
   okay('Eroare la adaugarea unei noi inregistrari',$result);
   
   }
   */

mysqli_close($conn); 