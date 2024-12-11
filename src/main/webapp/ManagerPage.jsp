<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
    String role = (String) session.getAttribute("role"); // Lấy thông tin vai trò từ session

    if (role == null || !role.equals("Manager")) { 
        response.sendRedirect("Login.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager Page</title>
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
    .card-section {
        margin-top: 20px;
    }
    .table-section {
        margin-top: 40px;
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

<div class="container mt-4">
    <!-- Sales Revenue -->
    <section class="card-section">
        <h1 class="text-primary">Sales Revenue</h1>
        <div class="row">
            <div class="col-md-6">
                <div class="card border-primary">
                    <div class="card-body">
                        <h5 class="card-title">Revenue This Month</h5>
                        <p class="card-text text-success font-weight-bold">1,000,000 VNĐ</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Manage Staff -->
    <section class="table-section">
        <h1 class="text-primary mt-5">Manage Staff</h1>
        <table class="table table-bordered table-striped">
            <thead class="thead-light">
                <tr>
                    <th>Staff Name</th>
                    <th>Email</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Staff 1</td>
                    <td>staff1@example.com</td>
                    <td>
                        <button class="btn btn-warning btn-sm">Edit</button>
                        <button class="btn btn-danger btn-sm">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>Staff 2</td>
                    <td>staff2@example.com</td>
                    <td>
                        <button class="btn btn-warning btn-sm">Edit</button>
                        <button class="btn btn-danger btn-sm">Delete</button>
                    </td>
                </tr>
            </tbody>
        </table>
        <button class="btn btn-success">Add Staff</button>
    </section>
</div>

<footer class="footer text-center mt-4">
    <div class="container">
        <span>© 2024 System Management</span>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
