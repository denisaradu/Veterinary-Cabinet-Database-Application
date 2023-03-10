<?php

$msg = "$_COOKIE[msg]";

$msg = explode('_&&_', $msg);

//echo "<br/>";
//echo "$msg[0]";
//echo "<br/>";
//echo "<br/>";
//echo "$msg[1]";
//echo "<br/>";
//echo "<br/>";

for($i = 0; $i < count($msg); ++$i) {
  $x = explode('::', $msg[$i]);
  $y = $x[0];
  $$y = "$x[1]";
}

//echo "<br/>";
//echo "$username";
//echo "<br/>";
//echo "<br/>";
//echo "$parola";

function okay($info,$result)  //  Raspuns la call() din HTML.
{
    // Pentru ca am facut comunicarea dintre HTML si PHP prin Cookies, trebuie adaptat raspunsul $info sa poata fi transmis prin Cookie spre HTML
    $info = strval($info);                              //  $info devine String indiferent ce type ar fi
    $info = explode('<br />', $info);                   //  Convertim LINE BREAKS
    $info = implode('_&&_', $info);                     //  in "_&&_" deoarece Cookies nu apreciaza LINE BREAKS
    setcookie('okay', $info, 0, '/', false, false);     //  Setam Cookie cu $info ^procesat^ ca sa fie preluat de HTML

    
    // echo json_encode(mysqli_fetch_array($result));

    $data = strval(json_encode(mysqli_fetch_array($result)));
    $data = explode('<br />', $data);                   
    $data = implode('_&&_', $data);                     
    setcookie('data', $data, 0, '/', false, false);     
}


