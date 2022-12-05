<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: violet;">

	<form method="get" action="AddCustomer.jsp">
		<center>
			<table border=3>
				<div style="color: blue;">
					<tr>
						<th>Enter UserId
						</th>
						<td><input type="number" name="userId" /></td>
					</tr>
				</div>
				<div style="color: blue;">
					<tr>
						<th>Enter password </th>
						<td><input type="text" name="pass" /></td>
					</tr>
				</div>

				<div style="color: blue;">
					<tr>
						<th>Enter First Name</th>
						<td><input type="text" name="firstName" /></td>
					</tr>
				</div>

				<div style="color: blue;">
					<tr>
						<th>Enter last Name</th>
						<td><input type="text" name="lastName" /></td>
					</tr>
				</div>

				<div style="color: blue;">
					<tr>
						<th>Enter Contact No:
					<td>	<label for="ContactNo"></label>
             <input type="text" name="ContactNo" minlength="10" maxlength="10"></td>
					

				</div>

				<div style="color: blue;">
					<tr>
						<th>Enter Id Proof</th>
						<td><input type="text" name="idProof" /></td>
					</tr>
				</div>

				<div style="color: blue;">
					<tr>
						<th>Enter City</th>
						<td><input type="text" name="city" / required></td>
					</tr>
					<br />
				</div>

				<tr>
					<th><input type="submit" value="Insert" /></th>
				</tr>
			</table>
		</center>
		<c:if test="${param.userId != null}">
			<jsp:useBean id="beanDao"
				class="com.infinite.HMproject.HotelDetailsDAO" />
			<jsp:useBean id="customer"
				class="com.infinite.HMproject.CustomerDetails" />

			<jsp:setProperty property="*" name="customer" />
			<c:out value="${beanDao.addCustomer(customer)}" />
		</c:if>
	</form>
</body>
</html>