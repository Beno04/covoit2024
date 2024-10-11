<?php

include_once '../global/config.php';
include_once '../'.CHEMIN_LIB.'pdo2.php';
include_once '../'.CHEMIN_ENTITY.'CovoitUser.php';

function testCovoitUser() {

    echo "Test du constructeur sans paramètres\n";
    $user1 = new CovoitUser();
    var_dump($user1);
    echo "\n";


    echo "Test du constructeur avec 6 paramètres\n";
    $user2 = new CovoitUser(1, "Schon", "Hugo", "0600000000", "Hugo.Schohn@gmail.com", "Aaa20102010**");
    var_dump($user2);
    echo "\n";


    echo "Test des getters et setters\n";
    $user1->setId(2)
          ->setNom("Benault")
          ->setPrenom("Lucas")
          ->setTel("0700000000")
          ->setMail("lucas.benault@mail.com")
          ->setMdp("Aaa20112011**");


    echo "ID: " . $user1->getId() . "\n";
    echo "Nom: " . $user1->getNom() . "\n";
    echo "Prenom: " . $user1->getPrenom() . "\n";
    echo "Tel: " . $user1->getTel() . "\n";
    echo "Mail: " . $user1->getMail() . "\n";
    echo "Mot de passe: " . $user1->getMdp() . "\n";

    echo "\nTous les tests sont terminés.\n";
}


testCovoitUser();

 
?>
