<?php

session_start();
$con = mysqli_connect("localhost","root","","kjikbgi2019");
$query = mysqli_query($con,"SELECT * FROM email where id_email='".$_POST['id_email']."'");
$row = mysqli_fetch_assoc($query);
$query2 = mysqli_query($con, "INSERT INTO email VALUES ('','".$row['subject']."','".$_POST['email_forwarded']."','".$row['email_content']."','".$_SESSION['email_user']."','2')");