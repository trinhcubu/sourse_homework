<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Webside loging email</title>
</head>
<body>
	<h1>Thanks for taking our survey!</h1>

	<p>Here is the information that you entered:</p>

	<label>Email:</label>
	<span>${user.email}</span>
	<br>
	<label>First Name:</label>
	<span>${user.firstName}</span>
	<br>
	<label>Last Name:</label>
	<span>${user.lastName}</span>
	<br>
	<label>Date of birth:</label>
	<span>${user.date}</span>
	<br>
	<label>Heard From:</label>
	<span>${user.heardFrom}</span>
	<br>
	<label>Updates:</label>
	<span>${user.wantsUpdates}</span>
	<br>
	<label>Contact:</label>
	<span>${user.contactVia}</span>
	<br>
	<p>To enter another email address, click on the Back button in your
		browser or the Return button shown below.</p>
	<form action="index.html" method="get">
		<input type="hidden" name="action" value="join"> <input
			type="submit" value="Return">
	</form>
	
	
	

</body>
</html>