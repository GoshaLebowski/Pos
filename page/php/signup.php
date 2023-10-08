<?php
session_start();
error_reporting(0);
include_once "../php/config.php";
$name = mysqli_real_escape_string($conn, $_POST['name']);
$number = mysqli_real_escape_string($conn, $_POST['number']);
$email = mysqli_real_escape_string($conn, $_POST['email']);
$description = mysqli_real_escape_string($conn, $_POST['description']);
$password = mysqli_real_escape_string($conn, $_POST['password']);
$repeatPassword = mysqli_real_escape_string($conn, $_POST['repeatPassword']);
$userRole = $_POST['userRole'];

if (!empty($name) && !empty($number) && !empty($email) && !empty($description) && !empty($repeatPassword)) {
    //Проверяю имя в базу
    $paternName = '/[\S]{2,} [\S]{2,} [\S]{2,}( [\S]{2,})*/';
    if (preg_match($paternName, $name)) {
        //Проверка номер телефона
        $paternNumber = '/^([+ \ \ s])(\+\d{12}|\d{11}|\+\d{2}-\d{3}-\d{7})$/';
        if (preg_match($paternNumber, $number)) {
            //Проверяю существует ли данный номер в базе данных или нет
            $sqlNumber = mysqli_query($conn, "SELECT * FROM users WHERE number = '{$number}'");
            if (mysqli_num_rows($sqlNumber) > 0) { //если номер уже существует
                echo "Этот номер $number уже существует!";
            } else {
                // Проверяю у пользователя email действильный он или нет
                if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
                    //Проверяю существует ли данный email в базе данных или нет
                    $sqlEmail = mysqli_query($conn, "SELECT * FROM users WHERE email = '{$email}'");
                    if (mysqli_num_rows($sqlEmail) > 0) { //если электронная почта уже существует
                        echo "Этот email $email уже существует!";
                    } else {
                        //Проверка описание 
                        $patternDescription = '/^[\w\W.!?",:;()_ ]{0,250}$/';
                        if(preg_match($patternDescription, $description)) {
                            $paternPassword = '/^.*(?=.{8,120})(?!.*\s)(?=.*[a-zA-Z])(?=.*\d)(?=.*[!#$%&?_ "]).*$/';
                            if(preg_match($paternPassword, $password) && preg_match($paternPassword, $repeatPassword)) {
                                if($password == $repeatPassword) {
                                    if($userRole == "") {
                                        $userRole = 2;
                                    }

                                    $status = "Active now";
                                    $random_id = rand(time(), 10000000);
                                    $encryptPass = md5($password);
                                    $insertQuery = mysqli_query($conn, "INSERT INTO `users` 
                                    (`user_id`, `unique_id`, `name`, `number`, `email`, `description`, `password`, `role`, `status`) VALUES 
                                    (NULL, '{$random_id}', '{$name}', '{$number}', '{$email}', '{$description}', '{$encryptPass}', '{$userRole}', '{$status}')");
                                    if($insertQuery) {
                                        $selectSql2 = mysqli_query($conn, "SELECT * FROM users WHERE email = '{$email}'");
                                        if(mysqli_num_rows($selectSql2) > 0) {
                                            $result = mysqli_fetch_assoc($selectSql2);
                                            $_SESSION['unique_id'] = $result['unique_id'];
                                            echo "success";
                                        } else {
                                            echo "Этот email $email уже существует!";
                                        }
                                    } else {
                                        echo "Что-то пошло не так. Пожалуйста, попробуйте еще раз!";
                                    }
                                } else {
                                    echo "Пароли должны совпадать";
                                }
                            } else {
                                echo "Пароли должены состоять:
                                    Минимум 1 цифра. 
                                    Не менее 1-го специального символа.
                                    Не менне 3-х буквенных символов.
                                    Не меньше 8-ми символов.
                                    Не должно содержать пробелов.";
                            }
                        } else {
                            echo "Описание не должно превышать 250 символов";
                        }
                    }
                } else {
                    echo "Этот email $email не действителен"; 
                }
            }
        } else {
            echo "Этот номер $number введен не корректно";
        }
    } else {
        echo "Это имя $name введено не корректно";
    }
} else {
    echo "Все поля ввода обязательны для заполнения";
}
?>