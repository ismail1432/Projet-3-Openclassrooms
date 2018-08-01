<?php
class Manager
{
    // identifiants connexion WAMP
    // Constante de connexion
    const HOST_NAME = 'HostDeLaDB';
    const DATABASE = 'NomDeVotreBaseDeDonnee';
    const USER_NAME = 'VotreNomDutilisateur';
    const PASSWORD = 'VotreMotDePasse';

    // Méthode de connexion à la BDD
    protected function bddConnect()
    {
        // Connexion à la BDD
        $bdd = new PDO('mysql:host='.self::HOST_NAME.';dbname='.self::DATABASE.'; charset=utf8', self::USER_NAME, self::PASSWORD);
        return $bdd;
    }
}
