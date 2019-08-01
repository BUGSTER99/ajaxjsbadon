<?php
$con = mysqli_connect("localhost","root","","kjikbgi2019");
$query = mysqli_query($con,'SELECT * FROM users');
if ($query->num_rows > 0) {
    while($row = $query->fetch_assoc()) {
        echo "id: " . $row["id_users"]. " - Name: " . $row["name"]. " " . $row["email"]. "<br>";
    }
} else {
    echo "0 results";
}