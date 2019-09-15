<?php 

try {

$conexion = new PDO(

'sqlsrv:Server=165.22.11.226;database=master',
'sa',//usuario
'Hola2019'//contraseña

);

} catch (Exception $e) {

  echo 'Error: '.$e->getMessage();

	
}






 ?>