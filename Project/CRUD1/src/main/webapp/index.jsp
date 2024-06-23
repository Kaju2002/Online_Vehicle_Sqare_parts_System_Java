<%@page import="java.util.*"%>
<%@page import="dao.ProductDao"%>
<%@page import="java.sql.Connection"%>
<%@page import="connection.DbCon"%>
<%@page import="model.*"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);
}

ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();

ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");

if(cart_list != null){
	request.setAttribute("cart_list",cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to online vehicle square</title>
<%@include file="includes/head.jsp"%>
<style>
footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #000;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
</style>
</head>
<body>
	<%@include file="includes/navbar.jsp"%>

	
	<div class="container">
		<div class="card-header my-3"><h5>All Spare Products</h5></div>
		<div class="row">
		<% 
		if(!products.isEmpty()){
				for(Product p:products){%>
					<div class="col-md-3 my-3">
					<div class="card w-100" style="width: 18rem;">
						<img class="card-img-top" src="product-images/<%= p.getImage()%>" alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title"><%= p.getName()%></h5>
							<h5 class="price">Price :<%= p.getPrice() %></h5>
							<h5 class="category">Category :<%= p.getCategory()%></h5>
							<div class="mt-3 d-flex justify-content-between">
								<a href="add-to-cart?id=<%= p.getId() %>" class="btn btn-dark">Add to Cart</a> <a href="order-now?quantity=1&id=<%= p.getId()%>"
									class="btn btn-primary">Buy Now</a>
							</div>

						</div>
					</div>
				</div>
				<% }
				
			}
		%>
			
		</div>
	</div>

	<%@include file="includes/footer.jsp"%>
</body>
</html>