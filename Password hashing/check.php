<?php

$nombre = $_POST["usuario"];
$password = $_POST["clave"];


  


 $nombreminusculas = strtolower($nombre);
 $searchHashInDBMatch = pg_query(houdiniConnection(), "SELECT * FROM penguin WHERE username = '$nombreminusculas';");
 $userHash =  pg_fetch_result($searchHashInDBMatch, 0, 0);

 $userHash2 = pg_fetch_result($searchHashInDBMatch, 0, 3);
 $ex = exec("node --experimental-modules compareHash.mjs $password '" . $userHash2 . "'");
 echo $nombre . $nombreminusculas . $password . $userHash2 . $ex;  

?>