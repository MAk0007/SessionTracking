<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file="homeHeader.jsp"%>
<title>Insert title here</title>
</head>
<body bgcolor="#B0C4DE">

<h2 align="center">${status }</h2>
<div align="right">
<form action="http://BLRPRGFWD31240:8082/ProjectCart5/viewCart"
			method="get">
			<input type="submit" value="View Cart">
		</form>
	</div>
</body>
</html>