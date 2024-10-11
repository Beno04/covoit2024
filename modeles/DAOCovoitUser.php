<?php
include_once '../entity/CovoitUser.php';

function getUnCovoitUser($id){
   	$pdo = PDO2::getInstance();

    $requete = $pdo->prepare("SELECT * FROM CovoitUser WHERE id = :id");

    $requete->bindParam(':id', $id, PDO::PARAM_INT);

    $requete->execute();

	$requete->setFetchMode(PDO::FETCH_CLASS, 'CovoitUser');
	$unCovoitUser = $requete->fetch();
	  
	$requete->closeCursor();
	return $unCovoitUser;
}

function getLesCovoitUser(){
	$pdo = PDO2::getInstance();
        
    $requete = $pdo->prepare("SELECT * FROM CovoitUser");
    
	$requete->execute();
    
	$tab = $requete->fetchAll(PDO::FETCH_CLASS, "CovoitUser");
    
	$requete->closeCursor();
	
	return $tab;
}



function addCovoitUser($unCovoitUser){
   	$pdo = PDO2::getInstance();

	$requete = $pdo->prepare("INSERT INTO CovoitUser (nom, prenom, tel, mail, mdp)VALUES (:nom, :prenom, :tel, :mail, :mdp)");
   

	$pwdHach = password_hash($unCovoitUser->getMdp(), PASSWORD_DEFAULT);


	$requete->bindValue(':nom', $unCovoitUser->getNom(), PDO::PARAM_STR);
    $requete->bindValue(':prenom', $unCovoitUser->getPrenom(), PDO::PARAM_STR);
    $requete->bindValue(':tel', $unCovoitUser->getTel(), PDO::PARAM_STR);
    $requete->bindValue(':mail', $unCovoitUser->getMail(), PDO::PARAM_STR);
    $requete->bindValue(':mdp', $pwdHach, PDO::PARAM_STR);

	   
	$requete->execute();
   
	return $pdo->lastInsertId();
}

function updateCovoitUser($unCovoitUser){
    $pdo = PDO2::getInstance();

    $requete = $pdo->prepare("UPDATE CovoitUser SET nom = :nom, prenom = :prenom, tel = :tel, mail = :mail, mdp = :mdp WHERE id = :id");

    $pwdHach = password_hash($unCovoitUser->getMdp(), PASSWORD_DEFAULT);

    $requete->bindValue(':nom', $unCovoitUser->getNom(), PDO::PARAM_STR);
    $requete->bindValue(':prenom', $unCovoitUser->getPrenom(), PDO::PARAM_STR);
    $requete->bindValue(':tel', $unCovoitUser->getTel(), PDO::PARAM_STR);
    $requete->bindValue(':mail', $unCovoitUser->getMail(), PDO::PARAM_STR);
    $requete->bindValue(':mdp', $pwdHach, PDO::PARAM_STR);
    $requete->bindValue(':id', $unCovoitUser->getId(), PDO::PARAM_INT); 

    $requete->execute();

    return $pdo->lastInsertId();
}

function deleteCovoitUser($id){
    $pdo = PDO2::getInstance();

    $requete = $pdo->prepare("DELETE FROM CovoitUser WHERE id = :id");

	$requete->bindParam(':id', $id, PDO::PARAM_INT);

    $requete->execute();

    return $pdo->lastInsertId();
}


?>
