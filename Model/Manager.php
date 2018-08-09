<?php
require_once('./config-dist.php');
    
    // Méthode de connexion à la BDD 
if(!function_exists("bdd_connect")){
  function bdd_connect(){
    try{
       $bdd =new PDO('mysql:host='.HOST_NAME.';dbname='.DATABASE.'; charset=utf8', USER_NAME, PASSWORD);
       // Activation des erreurs PDO
       $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
       // mode de fetch par défaut : FETCH_ASSOC / FETCH_OBJ / FETCH_BOTH
       $bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    } catch(PDOException $e) {
       die('Erreur : ' . $e->getMessage());
    }
    return $bdd;
  }
}