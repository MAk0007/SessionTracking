<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="homeHeader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to SmallMart</title>
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
</head>
<body bgcolor="#FFFFE0">
	<center>
		<h1>Welcome to SmallMart</h1>
	</center>
	<div align="left">
	<form action="http://BLRPRGFWD31240:8082/ProjectCart5/viewHistory"
			method="get">
			<input type="submit" value="Transaction history">
		</form>
	</div>
	<div align="right">
	<% HttpSession session3 = request.getSession(false);
	String uname= (String)session.getAttribute("uname"); %>
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
			<td align="center" width="650">View Description</td>
			<td width="150" style="font-size: large;"><center><h4>Price</h4></center></td>
			<td>Select</td>
		</tr>
		<tr>
			<td>Phone</td>
			<td><img src="images/phone.jpg" alt="phoneimage"  width="150" height="150"></td>
			<td width="650">phone description:Apple iPhone 5s 
The iPhone 5s is not a radical departure in design for Apple, save for one very important feature. No, we don't mean the new Space Gray and Gold colors. We have in mind the home button that has been on iPhones from day one, is now turned into a fingerprint scanner dubbed Touch ID. It lets you unlock the phone and authorize purchases, safely storing your fingerprints in the A7 processor itself, out of the reach for anyone but a few default iOS 7 apps. This A7 processor debuts on the iPhone 5s as the first 64-bit mobile chipset in use on a commercial device, utilized by the latest flat and minimalistic iOS 7 that has been rewritten to take advantage of the 64-bit system. It sports a dedicated M7 co-processor for always-on motion sensing, too. The iSight camera stayed 8 MP, but is much improved, with larger pixels, wider aperture, and the ability to shoot slow motion videos, not to mention the dual two-tone LED flash on the back that strives for natural skin color representation.
</td>
			<td align="center" width="150" style="font-size: large;">50000</td>
			<td><form action="http://BLRPRGFWD31240:8082/ProjectCart5/product1"
					method="get">
					<input type="submit" value="Add">
				</form></td>
		</tr>
		<tr>
			<td>Chair</td>
			<td><img alt="chairimage" src="images/chair.jpeg" width="150" height="150"></td>
			<td width="800">chair description:KESY LOUNGE CHAIR
Solid ash frame, fully upholstered.

Available upholstered in various fabrics, leather or C.O.M.

DIMENSIONS
Height 820
Width 720 
Depth 680 
Seat Height 420 
Footprint 0.49 m2 
Gross Weight 16.00 
Fabric Requirement: 1.9 
Leather Requirement: 3.8 m2</td>
			<td align="center" width="150" style="font-size: large;">500</td>
			<td><form action="http://BLRPRGFWD31240:8082/ProjectCart5/product2"
					method="get">
					<input type="submit" value="Add">
				</form></td>
		</tr>
		<tr>
			<td>Table</td>
			<td><img alt="tableimage" src="images/table.jpg" width="150" height="150"></td>
			<td width="800">table description: MPTATION DREAMA ROUND TABLE
A class on its own, the Emptation Dreama Round Luxury Glass Dining Table provides your dining room opulent 
service while you dine with your family and friends. Made of #304-grade stainless steel with tempered glass/15mm table top,
 this elegant transitional furniture displays creativity and ingenuity promising to mesmerize anybody’s attention.
</td>
			<td align="center" width="150" style="font-size: large;">800</td>
			<td><form action="http://BLRPRGFWD31240:8082/ProjectCart5/product3"
					method="get">
					<input type="submit" value="Add">
				</form></td>
		</tr>
	</table>
	<center><a href="http://BLRPRGFWD31240:8082/ProjectCart5/page2"><h4>2</h4></a></center>
</body>
</html>