<?php
$cuenta_origen= $_POST['cuenta_origen'];
$cuenta_destino= $_POST['cuenta_destino'];
$valor= $_POST['valor'];
?>

<?php

try {
  $mbd = new PDO('mysql:host=localhost;dbname=sistemabancarios','root','',
      array(PDO::ATTR_PERSISTENT => true));
  echo "Conectado\n";
} catch (Exception $e) {
  die("No se pudo conectara la base de datos por favor verificar los datos: " . $e->getMessage());
}

try {  
  $mbd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  $mbd->beginTransaction();
  $mbd->exec("UPDATE cuenta SET saldo=saldo-$valor WHERE n_cuenta=$cuenta_origen");
  $mbd->exec("UPDATE cuenta SET saldo=saldo+$valor WHERE n_cuenta=$cuenta_destino"); 
      
  $mbd->commit();
  
} catch (Exception $e) {
  $mbd->rollBack();
  echo "no se a podido realizar la transferencia con exito: " . $e->getMessage();
}
?>