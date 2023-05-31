<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BITLAB SHOP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</head>
<body class="bg-body-tertiary">
<div class="mx-5">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <b><a class="navbar-brand" href="/home">BITLAB SHOP</a></b>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div id="navbarTogglerDemo02" >
                <ul class="navbar-nav nav justify-content-end">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Top Sales</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">New Sales</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">By Category</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/login.jsp">Sign In</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <hr>
    <div class="mt-5">
        <%
            String error = (String)request.getAttribute("error");
            if(error!=null){
        %>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            Incorrect email or password!
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <%
            }
        %>
        <form action="/login" method="post">
            <div class="card">
                <div class="card-header">
                    Login Page
                </div>
                <div class="card-body">
                    <div class="row mt-2">
                        <div class="col-12">
                            Email: <input type="email" class="form-control" name="email">
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            Password: <input type="password" class="form-control" name="password">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <button class="btn btn-success">Login</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
