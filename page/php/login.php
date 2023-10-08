<?php 
    session_start();
    error_reporting(0);
    include_once "../php/config.php";
    $emailLog = mysqli_real_escape_string($conn, $_POST['emailLog']);
    $passLog = mysqli_real_escape_string($conn, $_POST['passLog']);

    if(!empty($emailLog) && !empty($passLog)) {
        //Проверяю у пользователя введенный email & password в базе данных
        $encryptPass = md5($passLog);   
        $sql = mysqli_query($conn, "SELECT * FROM users WHERE email = '{$emailLog}' AND password = '{$encryptPass}'");
        if(mysqli_num_rows($sql) > 0) { //если учетные данные пользователей совпадают
            $row = mysqli_fetch_assoc($sql);
            $_SESSION['unique_id'] = $result['unique_id']; //используя session, я использовал user unique_id в другом php-файле
            echo "success";
        } else {
            echo "Этот email $emailLog и этот пароль $passLog не корректны!";
        }
    } else {
        echo "Все поля ввода обязательны для заполнения!";
    }
?>