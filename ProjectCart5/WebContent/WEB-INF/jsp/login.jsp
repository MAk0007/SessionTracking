<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="refresh" content="5"> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to SmallMart</title>
</head>
<body bgcolor="lemonchiffon">
	<h1 align="center">Welcome to SmallMart</h1>
	<p></p>
	<p></p>

		<h4 align="center">
			<table>
				<form action="http://BLRPRGFWD31240:8082/ProjectCart5/connection"
					method="get">
					<tr>
						<td><label class="col">Username</label></td>
						<td><input type="text" placeholder="Enter Username" name="uname"><br></td>
					</tr>
					<tr>
				<td><label class="col">Password</label></td>
				<td><input type="password" placeholder="Enter Password" name="pwd"><br></td>
				</tr>
				<tr>
					<td><div>
							<%
								/* if(null!=request.getAttribute("errorMessage"))
								{
								out.println(request.getAttribute("errorMessage"));
								} */
							%><c:if test="${not empty errorMessage}">
								<c:out value="${errorMessage}" />
							</c:if>
							<span id="errorMessage"> </span>
						</div></td>
				</tr>
				<tr>
					<td colspan=2 align="center"><input type="submit"
						value="login"></td>
				</tr>
				</form>
			</table>
		</h4>
</body>
</html>