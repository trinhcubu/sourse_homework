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
    
<h1>CD list</h1>
<table>
    <tr>
        <th>Description</th>
        <th class="right">Price</th>
        <th>&nbsp;</th>
    </tr>
    <tr>
        <td>86 (the band) - True Life Songs and Pictures</td>
        <td class="right">$14.95</td>
        <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="8601">
                <input type="submit" value="Add To Cart">
            </form><!--<a href="cart?productCode=8601">Add To Cart</a>--></td>
    </tr>
    <tr>
        <td>Paddlefoot - The first CD</td>
        <td class="right">$12.95</td>
        <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="pf01">
                <input type="submit" value="Add To Cart">
            </form></td>
    </tr>
    <tr>
        <td>Paddlefoot - The second CD</td>
        <td class="right">$14.95</td>
        <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="pf02">
                <input type="submit" value="Add To Cart">
            </form></td>
    </tr>
    <tr>
        <td>Joe Rut - Genuine Wood Grained Finish</td>
        <td class="right">$14.95</td>
        <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="jr01">
                <input type="submit" value="Add To Cart">
            </form></td>
    </tr>
</table>
<a href="" style="display:grid;width: 200px;height:50px;align-items:center;justify-content:center;text-decoration: none;color:black;background:rgb(105, 197, 105);margin-top: 100px; border:3px solid black;;font-size:20px;border-radius:4px;">Back Home</a>
        
</body>
</html>