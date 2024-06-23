<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="model.*"%>
	<%
	User auth = (User)request.getSession().getAttribute("auth");
	if(auth != null){
		response.sendRedirect("index.jsp");
	}
	
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");

	if(cart_list != null){
		request.setAttribute("cart_list",cart_list);
	}
	%>
<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart Login</title>
    <%@include file="includes/head.jsp"%>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   

    <style>
        /* Custom CSS for adjusting layout */
        .image-container {
            width: 50%; /* Adjust the width of the image container */
            float: left;
        }
        .login-form-container {
            width: 50%; /* Adjust the width of the login form container */
            float: left;
        }
        /* Adjust margin and padding as needed */
        .container {
            margin-top: 50px;
        }
        .card {
            margin-bottom: 20px;
        }
        .login-image{
            border-radius: 50%;
        }
        
        
    </style>
</head>
<body>
    <%@include file="includes/navbar.jsp"%>
    <div class="container">
        <div class="row">
            <div class="col-md-6 image-container">
                <img src="product-images/profile.png" alt="Login Image" class="login-image img-fluid">
            </div>
            <div class="col-md-6 login-form-container">
                <div class="card">
                    <div class="card-header text-center">User Login</div>
                    <div class="card-body">
                        <form action="user-login" method="post">
                            <div class="form-group">
                                <label>Email Address</label>
                                <input type="email" class="form-control" name="login-email" placeholder="Enter Your Email" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" name="login-password" placeholder="*********" required>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Login</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="includes/footer.jsp"%>
    <!-- Include Bootstrap JS scripts if needed -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
