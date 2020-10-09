<?php

// define('SHOPIFY_APP_SECRET', 'c1d069cbc028ee555014195a4e072a96dff5be25df89686ce8e0bd5e249fc45a');

// function verify_webhook($data, $hmac_header) {
//   $calculated_hmac = base64_encode(hash_hmac('sha256', $data, SHOPIFY_APP_SECRET, true));
//   return hash_equals($hmac_header, $calculated_hmac);
// }

// $hmac_header = $_SERVER['HTTP_X_SHOPIFY_HMAC_SHA256'];
$data = file_get_contents('php://input');
$mensaje = $data;
// $verified = verify_webhook($data, $hmac_header);
// if ($verified) {
    $orden=json_decode($data,true);
/*
    $mensaje  = 
  '<!DOCTYPE html>
  <html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Prueba</title>
    <link rel="stylesheet" href="">
  </head>
  <body>
  <h2>Prueba</h2>
  <p>';
  $mensaje .= '<tr><th>Llave</th><th>Valor</th></tr>';
	foreach ($orden as $key => $value) {
    if($key=="addresses") {
      for ($i=0; $i < count($value); $i++) { 
        foreach ($value[$i] as $ke2 => $valu2) {
          $mensaje .= '<tr><td>'.$key.' -> '.$ke2.'</td><td>'.$valu2.'</td></tr>';
        }
      }
    } else {
      $mensaje .= '<tr><td>'.$key .'</td><td>'.$value.'</td></tr>';
    }
	}
  $mensaje .= '</table>';
}
*/
/////////////////////////////////////////////////////////////////////////////////////////////////
    $asunto = utf8_decode('prueba webhook');
    $cabeceras = 'Content-type: text/json';
   //  $cabeceras = 'Content-type: text/html; charset=utf-8';

    $correo = 'soluciones2000@gmail.com';

	mail($correo,$asunto,$mensaje,$cabeceras);
?>
