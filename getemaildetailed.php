<?php

session_start();
$con = mysqli_connect("localhost","root","","kjikbgi2019");
$query = mysqli_query($con,"SELECT * FROM email where id_email='".$_POST['id']."'");
$row = mysqli_fetch_assoc($query);
echo "<h3>From: ".$row['email_sender']."</h3><br><h4>Subject: ".$row['subject']."</h4><br><p>".$row['email_content']."</p>";