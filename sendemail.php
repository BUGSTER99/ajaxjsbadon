<?php

session_start();
$con = mysqli_connect("localhost","root","","kjikbgi2019");
$query = mysqli_query($con, "INSERT INTO email VALUES ('','".$_POST['subject']."','".$_POST['to_']."','".$_POST['email_content']."','".$_SESSION['email_user']."','0')");
