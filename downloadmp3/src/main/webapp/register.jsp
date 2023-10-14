<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
<title>Murach's Java Servlets and JSP</title>
</head>
<body>
	<h1>Download registration</h1>

	<p>To register for our downloads, enter your name and email address
		below. Then, click on the Submit button.</p>

	<form action="download" method="post">
		<input type="hidden" name="action" value="registerUser"> <label
			class="pad_top">Email:</label> <input type="email" name="email"
			value="${user.email}"><br> <label class="pad_top">First
			Name:</label> <input type="text" name="firstName" value="${user.firstName}"><br>
		<label class="pad_top">Last Name:</label> <input type="text"
			name="lastName" value="${user.lastName}"><br> <label>&nbsp;</label>
		<input type="submit" value="Register" class="margin_left">
	</form>
    <a href="" style="display:grid;width: 200px;height:50px;align-items:center;justify-content:center;text-decoration: none;color:black;background:rgb(105, 197, 105);margin-top: 100px; border:3px solid black;;font-size:20px;border-radius:4px;">Back Home</a>

</body>
</html>