<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />

<h1>Thanks for joining our email list</h1>

<p>Here is the information that you entered:</p>
<label>Email:</label>
<span>${user.email}</span><br>
<label>First Name:</label>
<span>${user.firstName}</span><br>
<label>Last Name:</label>
<span>${user.lastName}</span><br>

<p>To enter another email address, click on the Back 
button in your browser or the Return button shown 
below.</p>

<form action="index.jsp" method="post">
    <input type="hidden" name="action" value="join">
    <input type="submit" value="Return">
</form>
<a href="" style="display:grid;width: 200px;height:50px;align-items:center;justify-content:center;text-decoration: none;color:black;background:rgb(105, 197, 105);margin-top: 100px; border:3px solid black;;font-size:20px;border-radius:4px;">Back Home</a>
<c:import url="/includes/footer.jsp" />