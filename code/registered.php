<?php
    require_once "DB.php";

    $id = $_POST["id"];
    $account = $_POST["account"];
    $password = $_POST["password"];
    $name = $_POST["name"];
    $phone = $_POST["phone"];
    $birthday = $_POST["birthday"];
    $sex = $_POST["sex"];
    $email = $_POST["email"];
    $place = $_POST["place"];
    $school = $_POST["school"];
    $work = $_POST["work"];
    
    $sql = "INSERT INTO userinfo (ID, Account, Password, Name, Birthday, Phone, Sex, Email, Place, School, Work)values
            ('$id','$account','$password', '$name', '$birthday', '$phone', '$sex', '$email', '$place', '$school', '$work')";
    // var_dump($sql);
    mysqli_query($link, $sql);
    echo "<br><strong>新增成功!</strong>";