<?php
session_start();
require_once('../DB/db.php');

$_SESSION['underCategory'] = $_GET['id_ownerCat'];
$_SESSION['categories'] = "модал";

header('Location: creatingAservice.php');
?>