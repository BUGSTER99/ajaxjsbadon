<?php

session_start();
$con = mysqli_connect("localhost","root","","kjikbgi2019");
$query = mysqli_query($con,"SELECT * FROM email where to_users='".$_SESSION['email_user']."'");
if ($query->num_rows > 0) {
    while($row = $query->fetch_assoc()) {
        echo "From: <h3>" . $row["email_sender"]. "</h3><br>Subject: " . $row["subject"]. "<br>Content: <p>".$row["email_content"]."</p><br><a href='forward.php?id=".$row["id_email"]."'>Forward</a><br>";
    }
} else {
    echo "0 results";
}