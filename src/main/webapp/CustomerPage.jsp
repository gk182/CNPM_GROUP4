<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background-color: #f8f9fa;
    }
    .navbar-brand {
        font-weight: bold;
    }
    .container {
        margin-top: 30px;
    }
    .card {
        margin-bottom: 20px;
    }
    .footer {
        background-color: #f1f1f1;
        padding: 20px 0;
    }
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="btn btn-outline-danger ml-auto" href="Logout.jsp">Logout</a>
</nav>

<div class="container">
    <h2 class="text-primary mb-4">Products</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <img src="shirt.jpg" class="card-img-top" alt="T-shirt">
                <div class="card-body">
                    <h5 class="card-title">T-shirt</h5>
                    <p class="card-text">Price: 200,000 VND</p>
                    <button class="btn btn-primary">Buy Now</button>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="jeans.jpg" class="card-img-top" alt="Jeans">
                <div class="card-body">
                    <h5 class="card-title">Jeans</h5>
                    <p class="card-text">Price: 300,000 VND</p>
                    <button class="btn btn-primary">Buy Now</button>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="shoes.jpg" class="card-img-top" alt="Sneakers">
                <div class="card-body">
                    <h5 class="card-title">Sneakers</h5>
                    <p class="card-text">Price: 500,000 VND</p>
                    <button class="btn btn-primary">Buy Now</button>
                </div>
            </div>
        </div>
    </div>
</div>

<footer class="footer text-center mt-4">
    <div class="container">
        <span class="text-muted">© 2024 System Management</span>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
