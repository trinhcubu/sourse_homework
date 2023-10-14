<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body{
        background-color: rgb(146, 162, 224);
        display: grid;
        justify-content: center;
        align-items: center;
    }
    h1{
        font-size: 60px;
        color: rgb(29, 107, 29);
    }
    input{
        width: 100px;
        background-color: rgb(40, 179, 133);
        height: 30px;
    }
</style>
</head>
<body>
	<h1>404 error !!!!</h1>
    <h2>Click button to return login page</h2>
    <h2>Thank you very much</h2>
    <form action="index.jsp" method="get">
		<input type="hidden" name="action" value="join"> <input
			type="submit" value="Return">
	</form>
</body>
</html>