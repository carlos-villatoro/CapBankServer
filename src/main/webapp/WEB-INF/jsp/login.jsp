<%--suppress ALL --%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="css/fontawesome/css/all.css">
    <link rel="stylesheet" href="css/default.css">
    <title>login</title>
</head>

<body class="d-flex align-items-center justify-content-center">

<!-- login form card -->
<div class="card login-form-card col-5 bg-transparent border-0">
    <div class="card-body">

        <h1 class="form-header card-title mb-3">
            <i class="fa fa-user-circle"></i> Login
        </h1>

        <form action="" class="login-form">

            <div class="form-group col">
                <input type="email" name="email" class="form-control form-control-lg" placeholder="Enter email" />
            </div>

            <div class="form-group col">
                <input type="password" name="password" class="form-control form-control-lg"
                       placeholder="Enter password" />
            </div>

            <div class="form-group col">
                <button class="btn btn-lg">Login</button>
            </div>


        </form>

        <p class="card-text text-white my-2">Don't have an account?
            <span class="ms-2">
                    <a href="/register" class="btn btn-md text-warning">Sign Up</a>
                </span>
        </p>

        <small class="text-warning">
            <i class="fa fa-arrow-alt-circle-left "></i>
            <a href="/" class="btn btn-sm text-warning">Back</a>
        </small>

    </div>
</div>

</body>

</html>