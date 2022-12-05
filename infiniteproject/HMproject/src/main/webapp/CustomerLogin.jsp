<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
</head>
<style>
body {
	background-image: url('agent0.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<body style="background-color: powderblue;">
	<jsp:useBean id="beanDao"
		class="com.infinite.HMproject.HotelDetailsDAO" />
	<form method="post" action="CustomerLogin.jsp">
		<center>
			<div style="color: black;">
				<h2>Please Login:</h2>
			</div>


			<div style="color: black;">
				UserId:<input type="text" name="userId" size="30" /><br />
			</div>

			<div style="color: black;">
				<br /> Password:<input type="password" name="pass" size="30" /><br />
			</div>

			<br /> <input type="submit" value="Login" /><br /> <br />
		</center>
	</form>



	<c:if test="${param.userId != null && param.pass != null}">
		<jsp:useBean id="login" class="com.infinite.HMproject.CustomerDetails" />
		<jsp:setProperty property="*" name="login" />
		<c:set var="userId" value="${param.userId}" />
		<c:set var="password" value="${param.pass}" />
		<c:set var="count" value="${beanDao.loginCheck(userId, password)}" />
		<c:set var="user" value="${user}" scope="session" />
		<c:if test="${count==1}">
			<center>
				<a href="CustomerCheck.jsp"><input type=submit value=SHOWHOTEL></a>
			</center>
		</c:if>
		<c:if test="${count==0}">
			<c:out value="Invalid credentials..."></c:out>
		</c:if>

		<center>
	</c:if>

</body>
</html>