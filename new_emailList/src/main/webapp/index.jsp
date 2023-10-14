<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />

<h1>Join our email list</h1>
<p>To join our email list, enter your name and
   email address below.</p>

<c:if test="${message != null}">
    <p><i>${message}</i></p>
</c:if>

<form action="emailList" method="post">
    <input type="hidden" name="action" value="add">        
    <label class="pad_top">Email:</label>
    <input type="email" name="email" value="${user.email}"><br>
    <label class="pad_top">First Name:</label>
    <input type="text" name="firstName" value="${user.firstName}"><br>
    <label class="pad_top">Last Name:</label>
    <input type="text" name="lastName" value="${user.lastName}"><br>        
    <label>&nbsp;</label>
    <input type="submit" value="Join Now" class="margin_left">
</form>
<a href="" style="display:grid;width: 200px;height:50px;align-items:center;justify-content:center;text-decoration: none;color:black;background:rgb(105, 197, 105);margin-top: 100px; border:3px solid black;;font-size:20px;border-radius:4px;">Back Home</a>


<c:import url="/includes/footer.jsp" />

