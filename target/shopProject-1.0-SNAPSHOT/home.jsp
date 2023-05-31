<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.sprintTask.shopProject.database.Items" %>
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
    <div class="mt-4" style="text-align: center">
        <div>
            <h2>Welcome to BITLAB SHOP</h2>
        </div>
        <div>
            <p style="color: #6c757d">Electronic devices with quality and service</p>
        </div>
    </div>
    <div class="row mt-3" style="max-height: 300px">
        <%
            ArrayList<Items> items = (ArrayList<Items>) request.getAttribute("items");
            if (items != null){
                for (Items i : items){
        %>
        <div class="col-md-4 mt-3">
            <div class="card" style="max-height: 100%">
                <div class="card text-center">
                    <h5 class="card-header"><%=i.getName()%></h5>
                    <div class="card-body">
                        <h5 class="card-title" style="color: green">$<%=i.getPrice()%></h5>
                        <p class="card-text"><%=i.getDescription()%></p>
                        <a href="#" class="btn btn-success" style="width: 90%">Buy Now</a>
                    </div>
                </div>
            </div>
        </div>
        <%
                }
            }
        %>
    </div>
</div>
</body>
</html>
