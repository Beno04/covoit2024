<?php

include_once '../global/config.php';
include_once '../'.CHEMIN_LIB.'pdo2.php';
include_once '../modeles/DAOCovoitUser.php';

$user2 = new CovoitUser(35,"Schon", "Hugo", "0129384756", "Hugo.Schohn@gmail.com", "Aaa20102010**");

var_dump(updateCovoitUser($user2));
?>

