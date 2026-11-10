<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up</title>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</head>
<body>

<div class="container">
    <div class="row">
        <div class="col m6 offset-m3">
            <div class="card">
                <div class="card-content">
                    <h3>Register here</h3>

                    <div class="form center-align">
                        <form action="Register" method="post">
                            <input type="text" name="userName" placeholder="Enter name"/>
                            <input type="text" name="password" placeholder="Enter unique password"/>
                            <input type="text" name="email" placeholder="Enter email"/>

                            <button type="submit" class="btn red">submit</button>
                        </form>
                    </div>

                    <div class="loader">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>