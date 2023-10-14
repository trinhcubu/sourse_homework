<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
<title>Murach's Java Servlets and JSP</title>
</head>
<body>
	<h1>Cookies</h1>
	
	<p>Here's a table with all of the cookies that this 
	browser is sending to the current server.</p>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<table>
	  <tr>
	    <th>Name</th>
	    <th>Value</th>
	  </tr>
	  <c:forEach var="c" items="${cookie}">      
	  <tr>
	    <td>${c.value.name}</td>
	    <td>${c.value.value}</td>
	  </tr>
	  </c:forEach>  
	</table>
	
	<p><a href="download?action=viewAlbums">View list of albums</a></p>
	
	<p><a href="download?action=deleteCookies">Delete all persistent cookies</a></p>
	    <a href="" style="display:grid;width: 200px;height:50px;align-items:center;justify-content:center;text-decoration: none;color:black;background:rgb(105, 197, 105);margin-top: 100px; border:3px solid black;;font-size:20px;border-radius:4px;">Back Home</a>
	

</body>
</html>