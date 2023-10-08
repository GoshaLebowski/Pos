<?php 
    $connect = mysqli_connect('localhost', 'root', '', 'pos');
    
    if (!$connect) {
        die('Error connect to DataBase');
    }
?>