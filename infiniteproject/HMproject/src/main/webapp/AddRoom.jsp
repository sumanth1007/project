<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

body {

  background-image: url('agent0.jpg');

  background-repeat: no-repeat;

  background-size: cover;

}

</style>

</head>
<body style="background-color:violet;">
<form  method="get" action="AddRoom.jsp" >

<table border="3" align="center"  >

<div style="color:blue;">
<tr>
<th> Hotel Id  </th>

<td> <input type="text" name="hotelId" value="${param.id}"/> </td>
</tr>  </div>

<div style="color:blue;">
<tr>
<th> Room Type </th>

<td> <input type="text" name="type" /> </td>
</tr>  </div>

<div style="color:blue;">
<tr>
<th> Costperday</th>
<td> <input type="number" name="costperday" /></td>
</tr>  </div>

<div style="color:blue;">
<tr>
<th> Status </th>
<td><input type="text" name="status" />
</td>
</tr> </div>

<div style="color:blue;">
<tr>
<td>
<input type="Submit"  value="AddRoom" />
</td>
</tr>  </div>
</table>
</form>
<c:if test="${param.type!=null && param.status!=null && param.costperday!=null}">
<jsp:useBean id="beanRoom" class="com.infinite.HMproject.Room" />
<jsp:setProperty property="*" name="beanRoom"/>
<jsp:useBean id="beanDao" class="com.infinite.HMproject.HotelDetailsDAO"/>
<c:out value="${beanDao.addroom(beanRoom)}"/>
</c:if>
</body>
</html>