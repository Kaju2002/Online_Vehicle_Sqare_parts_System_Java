<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Products</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
     
        /* Custom styles */
        /* Navigation bar */
        .navbar {
            background-color: #343a40 !important;
        }
        .navbar-brand, .navbar-nav .nav-link {
            color: #ffffff !important;
        }
        
        /* Form container */
        .container {
            margin-top: 20px;
        }
        /* Form fields */
        .form-group label {
            font-weight: bold;
        }
        .form-control {
            width: 250px; /* Reduced width of text boxes */
            font-size: 16px;
            border-radius: 5px;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .image-container {
            margin-top: 20px;
        }
        .login-image {
            max-width: 100%;
        }
    </style>
</head>
<body>
    <!-- Navigation bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="addStaff.jsp">Staff Management</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="addStaff.jsp">Add Staff</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ubdateStaff.jsp">Update Staff</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="deleteStaff.jsp">Delete Staff</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-right">
                <li class="nav-item">
                    <a class="nav-link" href="addProduct.jsp">Product Management</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-4">
        <div class="row">
            <div class="col-md-6">
                <h2>Add Staff</h2>
                <form action="create-ubdate-delete-staff" method="post">
                    <input type="hidden" name="action" value="add">  <!--hidden mode not shown in view-->
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="department">Department:</label>
                        <input type="text" class="form-control" id="department" name="department" required>
                    </div>
                    <div class="form-group">
                        <label for="contactNumber">Contact Number:</label>
                        <input type="text" class="form-control" id="contactNumber" name="contactNumber" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Add Staff</button>
                </form>
            </div>
            <div class="col-md-6 image-container">
                <img src="product-images/file.png" alt="Login Image" class="login-image img-fluid">
            </div>
        </div>
    </div>

    <!-- Bootstrap JS (Optional, if you want to use Bootstrap JavaScript features) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
