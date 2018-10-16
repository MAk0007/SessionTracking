<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="homeHeader.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lemonchiffon">
<center><h2>Product Information</h2></center>
<div align="right">
	<% HttpSession session3 = request.getSession(false);
	String uname= (String)session.getAttribute("uname"); %>
	<h5>Welcome <%out.println(uname); %></h5>
	</div>
<form:form method = "POST" action = "http://BLRPRGFWD31240:8082/ProjectCart5/update" >
         <table align="center">
         
         <tr>
               <td>Id: </td>
         <td><form:input path="id" value="${command.id}"/></td>
         </tr>
         
           <tr>
               <td>Name: </td>
               <td><form:input path = "pname" value="${command.pname}" /></td>
            </tr>
            <tr>
               <td>Price: </td>
               <td><form:input path = "price" value="${command.price}"/></td>
            </tr>
                <tr>
               <td>Quantity: </td>
               <td><form:input path = "quantity" value="${command.quantity}"/></td>
            </tr>
           
            <tr>
               <td colspan = "3" align="center">
                  <input type = "submit" value = "Update product"/>
               </td>
            </tr>
         </table>  
      </form:form>
	

</body>
</html>