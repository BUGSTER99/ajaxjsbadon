<?php
    $con = mysqli_connect("localhost","root","","kjikbgi2019");
    $pass = md5($_POST['password']);
    $query = mysqli_query($con,"SELECT * FROM users where email='".$_POST['user_email']."' and password='".$pass."'");
    if (mysqli_num_rows($query) > 0) {
        echo "ok";
    } else {
        echo "Not Ok";
    }
?>