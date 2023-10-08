<?php
session_start();
require_once('../DB/db.php');
$selectPodCategories = mysqli_query(
    $connect, 
    "SELECT `id_podkategorii`, `PodKategoria`, `Name` FROM `podkategorii` INNER JOIN `kategoria` ON podkategorii.Kategorii = kategoria.id WHERE id_podkategorii = '{$_GET['description']}'"
);
$selectPodCategoriesFetchAssoc = mysqli_fetch_assoc($selectPodCategories);

$_SESSION['fullCategory'] = $selectPodCategoriesFetchAssoc['Name'] . "-" . $selectPodCategoriesFetchAssoc['PodKategoria'];
$_SESSION['id_podkategorii'] = $selectPodCategoriesFetchAssoc['id_podkategorii'];
$_SESSION['categoriesChoice'] = "модал";

header('Location: creatingAservice.php');
?>