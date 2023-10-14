<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>

<h1>Your cart</h1>
	<table>
	  <tr>
	    <th>Quantity</th>
	    <th>Description</th>
	    <th>Price</th>
	    <th>Amount</th>
	    <th></th>
	  </tr>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<c:forEach var="item" items="${cart.items}">
		  <tr>
		    <td>
		      <form action="cart" method="post">
		        <input type="hidden" name="productCode" value="${item.product.code}">
		        <input type=text name="quantity" value="${item.quantity}" id="quantity">
		        <input type="submit" value="Update">
		      </form>
		    </td>
		    <td>${item.product.description}</td>
		    <td>${item.product.priceCurrencyFormat}</td>
		    <td>${item.totalCurrencyFormat}</td>
		    <td>
		      <a href="cart?productCode=${item.product.code}&amp;quantity=0">Remove Item</a>
		      <!--
		      <form action="" method="post">
		        <input type="hidden" name="productCode" 
		               value="${item.product.code}">
		        <input type="hidden" name="quantity" 
		               value="0">
		        <input type="submit" value="Remove Item">
		      </form>
		      -->
		    </td>
		  </tr>
		</c:forEach>
		
	</table>
		
		<p><b>To change the quantity</b>, enter the new quantity 
		      and click on the Update button.</p>
		  
		<form action="" method="post">
		  <input type="hidden" name="action" value="shop">
		  <input type="submit" value="Continue Shopping">
		</form>
		
		<form action="checkout.jsp" method="post">
		  <input type="hidden" name="action" value="checkout">
		  <input type="submit" value="Checkout">
		</form>

	<a href="" style="display:grid;width: 200px;height:50px;align-items:center;justify-content:center;text-decoration: none;color:black;background:rgb(105, 197, 105);margin-top: 100px; border:3px solid black;;font-size:20px;border-radius:4px;">Back Home</a>
</body>
</html>