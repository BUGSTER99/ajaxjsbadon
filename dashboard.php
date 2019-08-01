<!DOCTYPE html>
<html lang="en">
<head>
<?php
    session_start();
?>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    Welcome to Dashboard <?=$_SESSION['name_user']?>
    <form method="post" id="email_form">
        <input type="email" name="to_" id="to_" required placeholder="To:...">
        <input type="text" name="subject" id="subject" required placeholder="Subject...">
        <textarea name="email_content" id="email_content" cols="30" rows="10" required></textarea>
        <input type="submit" value="Send">
    </form>
    <div id="emailresult"></div>
    <script src="js/jquery-2.1.3.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>