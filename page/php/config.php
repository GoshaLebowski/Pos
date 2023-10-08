<?php
    $hosname = "localhost";
    $username = "root";
    $password = "Neys_1417";
    $dbname = "provisionofservices";

    $conn = mysqli_connect($hosname, $username, $password, $dbname);
    if (!$conn) {
        echo "Ошибное соединение базы данных".mysqli_connect_error();
    }
?>