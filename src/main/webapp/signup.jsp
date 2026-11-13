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
                    <h3 class="center-align">Register here</h3>
                    <h5 id="msg" class="center-align"></h5>

                    <div class="form center-align">
                        <form action="Register" method="post" id="myForm">
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

<script
        src="https://code.jquery.com/jquery-4.0.0.min.js"
        integrity="sha256-OaVG6prZf4v69dPg6PhVattBXkcOWQB62pdZ3ORyrao="
        crossorigin="anonymous">
</script>
<script>
    $(document).ready(function(){
        console.log("page is ready!.." )
        $("#myForm").on("submit", function(event){
            event.preventDefault()
            var f = $(this).serialize();
            console.log(f);
            $.ajax({
                url: "Register",
                data: f,
                type: 'POST',
                success: function (data, textStatus, jqXHR){
                    console.log(data);
                    console.log("success.....")
                    if(data.trim() === 'done'){
                        $("#msg").html("successfully Registered!")
                    }else{
                        $("#msg").html("Try again!")
                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log(data);
                    console.log("failed.....")
                    $("#msg").html("successfully Registered!")
                }
            })
        })
    })
</script>


</body>
</html>