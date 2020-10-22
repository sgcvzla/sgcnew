<?php

$data = file_get_contents('php://input');
$mensaje = $data;
$orden=json_decode($data,true);

$mensaje  = '
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Prueba</title>
    <link rel="stylesheet" href="">
  </head>
  <body>
    <h2>Prueba</h2>
    <table>
      <tr>
        <th>Llave</th>
        <th>Valor</th>
      </tr>';
      foreach ($orden as $key => $value) {
        if($key=="prospect") {
          for ($i=0; $i < count($value); $i++) { 
            foreach ($value[$i] as $ke2 => $valu2) {
              $mensaje .= '<tr><td>'.$key.' -> '.$ke2.'</td><td>'.$valu2.'</td></tr>';
            }
          }
        } else {
          $mensaje .= '<tr><td>'.$key .'</td><td>'.$value.'</td></tr>';
        }
      }
    $mensaje .= '
    </table>
  </body>
</html>';

$asunto = utf8_decode('prueba webhook');
$cabeceras = 'Content-type: text/json';

$correo = 'soluciones2000@gmail.com';

mail($correo,$asunto,$mensaje,$cabeceras);
?>
