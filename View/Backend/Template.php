<!doctype html>
<html lang="fr">
    <head>
        <meta charset="UTF-8"> <!-- Balise meta -->
        <meta name="viewport" content="initial-scale=1, user-scalable=no">
        <link rel="icon" type="image/ico" href="assets/images/favicon.ico">
        <link href="https://fonts.googleapis.com/css?family=Pattaya" rel="stylesheet"> <!-- Police d'écriture "Pattaya" -->
        <link href="https://fonts.googleapis.com/css?family=El+Messiri" rel="stylesheet"> <!-- Police d'écriture "El Messiri" -->
        <link rel="stylesheet" href="assets/css/style.css"> <!-- Feuille de style Géneral -->
        <link rel="stylesheet" href="assets/css/styleBackend.css"> <!-- Feuille de style spécifique au Backend -->
        <!-- Titre du site définit par la variable $titrePage -->
        <title><?= $this->title(); ?></title>
    </head>

    <body>

        <header>
            <p><img src="assets/images/logo.svg"></p>
            <h1>Billet simple pour l'Alaska</h1>
        </header>

        <nav>
            <ul id="firstLevel">
                <li><a href="index.php" title="Retourner sur le blog">Visualiser le Blog</a></li>
                <ul id="secondLevel">
                <?php if (isset($_SESSION['emailAdress'])) {
    ?>
                    <li><a href="index.php?action=deconnect" title="Me deconnecter du blog">Deconnexion</a></li> <!-- Lien de deconnexion -->
                </ul>
                <?php
}
                ?>
                </ul>
            </ul>
        </nav>

        <!-- Affichage du flux -->
        <?= $content; ?>

        <script src="assets/js/tinymce/tinymce.min.js"></script> <!-- Fichier JS de tinymce -->
        <script src="assets/js/tinymceAdmin.js"></script> <!-- Fichier initialisation tinymce -->

    </body>
</html>
