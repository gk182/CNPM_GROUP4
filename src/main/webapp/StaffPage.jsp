<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Staff - Order Management</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background-color: #f4f4f4; /* Light gray background */
    }
    .navbar {
        background-color: #343a40; /* Dark background for navbar */
    }
    .navbar-brand {
        font-weight: bold;
        color: #ffffff; /* White text */
    }
    .container {
        margin-top: 50px;
    }
    .table th, .table td {
        vertical-align: middle;
    }
    footer {
        background-color: #343a40; /* Dark background for footer */
        color: #ffffff; /* White text */
    }
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">System Management</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="btn btn-outline-danger ml-auto" href="Logout.jsp">Logout</a>
</nav>

<div class="container">
    <h2 class="text-center text-primary mb-4">Order Management</h2>
    
    <!-- Order List Table -->
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>Order ID</th>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Price (VNĐ)</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>#001</td>
                    <td>T-shirt</td>
                    <td>2</td>
                    <td>400,000</td>
                    <td><span class="badge badge-warning">Pending</span></td>
                    <td>
                        <button class="btn btn-success btn-sm">Pay</button>
                        <button class="btn btn-danger btn-sm">Cancel</button>
                    </td>
                </tr>
                <tr>
                    <td>#002</td>
                    <td>Sneakers</td>
                    <td>1</td>
                    <td>800,000</td>
                    <td><span class="badge badge-success">Paid</span></td>
                    <td>
                        <button class="btn btn-secondary btn-sm" disabled>Paid</button>
                        <button class="btn btn-danger btn-sm">Cancel</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<footer class="footer text-center">
    <div class="container">
        <span>© 2024 System Management</span>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
