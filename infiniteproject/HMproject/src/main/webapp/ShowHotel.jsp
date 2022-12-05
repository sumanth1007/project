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
	<form method="get" action="ShowHotel.jsp">
		<jsp:useBean id="beanDao"
			class="com.infinite.HMproject.HotelDetailsDAO" />
		<table border='3'>
			<tr>
				<th>hotelId</th>
				<th>hotelName</th>
				<th>Address1</th>
				<th>Address2</th>
				<th>city</th>
				<th>zipcode</th>
				<th>contactNo</th>
				<th>Rating</th>
				<th>Review</th>
				<th>AboutUs</th>
				<th>Show</th>

			</tr>
			<c:forEach var="ShowHotel" items="${beanDao.showhotel()}">
				<tr>
					<td><c:out value="${ShowHotel.hotelId}"></c:out></td>
					<td><c:out value="${ShowHotel.hotelName}" /></td>
					<td><c:out value="${ShowHotel.address1}" /></td>
					<td><c:out value="${ShowHotel.address2}" /></td>
					<td><c:out value="${ShowHotel.city}" /></td>
					<td><c:out value="${ShowHotel.zipcode}" /></td>
					<td><c:out value="${ShowHotel.contactNo}" /></td>
					<td><c:out value="${ShowHotel.rating}" /></td>
					<td><c:out value="${ShowHotel.review}" /></td>
					<td><c:out value="${ShowHotel.aboutus}" /></td>
					<td><a href="ShowRoom.jsp?id=${ShowHotel.hotelId}"><input
							type="button" value="ShowRoom"></a>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>