<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="ShowRoom.jsp">
		<jsp:useBean id="beanDao"
			class="com.infinite.HMproject.HotelDetailsDAO" />


		<table border='3'>
			<tr>
				<th>roomId</th>
				<th>type</th>
				<th>status</th>
				<th>costperDay</th>
				<th>HotelId</th>

			</tr>
			<c:forEach var="ShowRoom" items="${beanDao.showroom()}">
				<tr>
					<td><c:out value="${ShowRoom.roomId}"></c:out></td>
					<td><c:out value="${ShowRoom.type}" /></td>
					<td><c:out value="${ShowRoom.status}" /></td>
					<td><c:out value="${ShowRoom.costperday}" /></td>
					<td><c:out value="${ShowRoom.hotelId}" /></td>
					<td><a href="RoomBooking.jsp?id=${ShowHotel.hotelId}"><input
							type="button" value="Select"></a>
				</tr>
			</c:forEach>
		</table>

	</form>
</body>
</html>