<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form id="forward-form" method="POST">
        <input type="email" name="" id="email_forward" placeholder="Email Forwarder..">
        <input type="text" value="<?=$_GET['id']?>" hidden id="id_email">
        <input type="submit" name="" value="Send">
    </form>
    <div id="getEmailDetailed">
    </div>
    <script src="js/jquery-2.1.3.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>