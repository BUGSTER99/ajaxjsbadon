<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>Hello Result</h1>
    <form class="form-signin" method="POST" id="login-form">
                <input type="text" class="form-control" name="user_email" placeholder="Email" autofocus>
                <input type="password" name="password" class="form-control" placeholder="Password">
                <button class="btn btn-lg btn-primary btn-block" name="btn-login" id="btn-login" type="submit">
                    Sign in</button>
    <div id="result">

    </div>
    <script src="js/jquery-2.1.3.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>