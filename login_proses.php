<?php
    $con = mysqli_connect("localhost","root","","kjikbgi2019");
    $pass = md5($_POST['password']);
    $query = mysqli_query($con,"SELECT * FROM users where email='".$_POST['user_email']."' and password='".$pass."'");
    $row     = mysqli_fetch_array($query);
    if (mysqli_num_rows($query) > 0) {
        echo "ok";
        session_start();
        $_SESSION['email_user'] = $row['email'];
        $_SESSION['name_user'] = $row['name'];
    } else {
        echo "Not Ok";
    }
?>