<%@page import="com.itc.beans.StoreDataBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="homeHeader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lemonchiffon">

	<div align="center">
		<h1>Your CART</h1>

		<%-- <table border="1">
			<tr>
				<td>username</td>
			</tr>
			<c:forEach var="history" items="${listHistory}">
				<tr>
					<td><c:set var = "testnum" scope = "session" value = "${0}"/>
					<c:if test="${testnum == 0}">
				${history.username}
						
						</c:if>
						<c:set var = "testnum" scope = "session" value = "${1}"/>
						</td>
				</tr>
			</c:forEach>
		<p></p>
		<p></p>
		<tr><td>Product name</td>
		<td>Product price</td>
		<td>Product quantity</td>
		 </tr>
		<c:forEach var="history" items="${listHistory}">
				<tr>
					<td>${history.pname}</td>
					<td>${history.pname}</td>
					<td>${history.quantity}</td>
				</tr>
			</c:forEach>
<tr>
				<td>total Amount spent</td>
			</tr>
			<c:forEach var="history" items="${listHistory}">
				<tr>
					<td><c:out value="${history.totalprice}">
						</c:out></td>
				</tr>
</c:forEach>
<tr>
				<td>time</td>
			</tr>
			<c:forEach var="history" items="${listHistory}">
				<tr>
					<td><c:out value="${history.time}">
						</c:out></td>
				</tr>
</c:forEach>

		</table> --%>
<table border="1">
<tr>
				<td align="left"colspan="2">Username</td>
			<td align="center" colspan="3"> <%String uname= (String)session.getAttribute("uname");
out.println(uname);%></td> </tr>
<p></p>
		<p></p>
<tr><td>Product name</td>
		<td>Product price</td>
		<td>Product quantity</td>
		<td>Total Price</td>
		<td>Time Ordered</td>
		 </tr>
		 <% ArrayList<StoreDataBean> hisAr = (ArrayList<StoreDataBean>)session.getAttribute("hisAr");
		 for(int i=0;i<hisAr.size();i++){
			 StoreDataBean sd = hisAr.get(i);
			 
			 
			 %><tr><td><%out.println(sd.getPname()); %></td>
			 <td><%out.println(sd.getPprice()); %></td>
			 <td><%out.println(sd.getQuantity()); %></td>
			 <td><%out.println(sd.getTotalprice()); %></td>
			 <td><%out.println(sd.getTime()); %></td>
			 </tr> <%
			 
		 }
		 %>


</table>

	</div>

</body>
</html>