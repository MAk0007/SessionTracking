<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="homeHeader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
body {
	display: block;
	position: relative;
}

body::after {
	content: "";
	background: url(images/cart.jpg);
	opacity: 0.2;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	position: absolute;
	z-index: -1;
}
</style>

<title>page2</title>
</head>
<body bgcolor="#FFFFE0">
	<center>
		<h1>Welcome to SmallMart</h1>
	</center>
	<div align="right">
	<% HttpSession session3 = request.getSession(false);
	String uname= (String)session3.getAttribute("uname"); %>
	<h5>Welcome <%out.println(uname); %></h5>
	</div>
	<div align="right">
		<form action="http://BLRPRGFWD31240:8082/ProjectCart5/viewCart"
			method="get">
			<input type="submit" value="View Cart">
		</form>
	</div>
	<br>
	<table>
		<tr>
			<td>Name</td>
			<td>Image</td>
			<td width="650">View Description</td>
			<td align="center" width="150" style="font-size: large;">Price</td>
			<td>Select</td>
		</tr>
		<tr>
			<td>Radio</td>
			<td><img alt="radioimage" src="images/radio.jpg" width="150" height="150"></td>
			<td width="650">Radio description:modern radio
The radio can be used for oral or written communication. This, unlike television, does not transmit images and sounds simultaneously, it only transmits sound. In this medium there are programs of general opinion referring to any topic. Media of Auditory Communication. This is delivered to each of our homes thanks to slings transmitted by telecommunications antennas.
</td>
			<td align="center" width="150" style="font-size: large;">2000</td>
			<td><form action="http://BLRPRGFWD31240:8082/ProjectCart5/product4"
					method="get">
					<input type="submit" value="Add">
				</form></td>
		</tr>
		<tr>
			<td>Refrigerator</td>
			<td><img alt="refrigeratorimage" src="images/refrigerator.jpg" width="150" height="150"></td>
			<td width="650">Refrigerator description:25 cu. ft. French Door Refrigerator in Fingerprint Resistant Stainless Steel

Keep items in easy reach with the refrigerated exterior drawer
Get filtered water and ice with the exterior dispenser
This appliance exceeds government standards for energy
</td>
			<td align="center" width="150" style="font-size: large;">20000</td>
			<td><form action="http://BLRPRGFWD31240:8082/ProjectCart5/product5"
					method="get">
					<input type="submit" value="Add">
				</form></td>
		</tr>
		<tr>
			<td>Shoes</td>
			<td><img alt="shoesimage" src="images/shoes.jpg" width="150" height="150"></td>
			<td width="650">Shoes:adidas Prophere Sneaker
adidas Prophere Sneaker

Product Sku: 44579993 ; Color Code: 009

‘90s inspired sneaker from adidas. One-piece Primeknit upper offers an integrated three-stripes lacing system with a leather heel cage and an oversized label at the tongue. Finished with a sculpted midsole and a rubber outsole.</td>
			<td align="center" width="150" style="font-size: large;">500</td>
			<td><form action="http://BLRPRGFWD31240:8082/ProjectCart5/product6"
					method="get">
					<input type="submit" value="Add">
				</form></td>
		</tr>
	</table>
	<center><a href="http://BLRPRGFWD31240:8082/ProjectCart5/homepage"><h4>back</h4></a></center>
</body>
</html>