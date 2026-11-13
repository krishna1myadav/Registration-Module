<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Form</title>

    <style type="text/css">
        .div-form {
            display: flex;
            align-items: center;
            justify-content: center;
            border: 2px solid blue;
            padding: 30px;
        }
    </style>
</head>

<body>
<div class="div-form">
    <form action="userlogin" method="post">

        <h1>Login Form (Cookies Example)</h1>

        <label>Enter Email</label><br>
        <input type="text" name="em"><br>

        <br>
        <label>Enter Password</label><br>
        <input type="text" name="ps"><br><br>

        <button type="submit">Login</button>

    </form>
</div>
</body>
</html>