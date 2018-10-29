<?php

    session_start();

    if(isset($_SESSION['loggedIn'])) {
        header('Location: student.php');
    }

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./css/bootstrap/css/bootstrap.min.css">
        <script src="js/script.js" charset="utf-8"></script>
        <title>Home</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <!-- <script type="text/javascript" src="https://www.jsdelivr.com/package/npm/sweetalert2"></script> -->
        <!-- android browser -->
        <!-- <script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script> -->
        <script type="text/javascript">
            $(function() {
                document.getElementById('username').focus();
            });
        </script>
    </head>
    <body class="bg-dark">

        <center>
            <center class="mt-5 col-lg-4 col-md-5 col-sm-6">
                <div class="form-group">
                    <center class="h2 text-light">Username</center>
                    <input id="username" type="text" class="form-control text-center" placeholder="Enter Username" name="username">
                </div>
                <div class="form-group">
                    <center class="h2 text-light">Password</center>
                    <input id="password" type="password" class="form-control text-center" placeholder="Enter Password" name="password">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn bg-success mt-4 btn-lg col-lg-5 col-md-5" onclick="checkData()" name="loginButton">Login</button>
                </div>
            </center>
        </center>
    </body>
</html>
