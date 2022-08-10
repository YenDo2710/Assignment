<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Register Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./css/styleRegister.css">
</head>

<body>
    <div class="login-form">
        <div class="float-left">
            <p>Register</p>
        </div>
        <form method="post" action="register">
            <div class="form-group">
                <input type="text" size="50" class="form-control" name="userName" placeholder="User name" required="required">
            </div>
            <div class="form-group">
                <input type="email" size="50" class="form-control" name="email" placeholder="E-mail" required="required">
            </div>
            <div class="form-group">
                <input type="password" size="50" class="form-control" name="password" placeholder="Password" required="required">
            </div>
            <div class="form-group">
                <input type="password" size="50" class="form-control" name="rePassword" placeholder="Re Password" required="required">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-block">Register</button>
            </div>
        </form>

    </div>
</body>

</html>