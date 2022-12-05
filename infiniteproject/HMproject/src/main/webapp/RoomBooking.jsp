<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <form method="get" action="RoomBooking.jsp">
  	<center>
  	    Enter Room Id :
  	    <input type="text" name ="roomId" value ="${param.RoomStatus}"/><br/><br/>
  		Enter CustomerId :
  		<input type="text" name="customerId" /><br/><br/>
  		
  		Enter ChkInDate :
  		<input type="date" name="chkinDate" /><br/><br/>
  		Enter ChkOutDate :
  		<input type="date" name="chkoutDate" /><br/><br/>
  		Enter HotelId :
  		<input type="text" name="hotelId" /><br/><br/>
  		
  		<input type="submit" value="Book" />
  	</center>
  </form>
  <c:set var="name" value="${param.roomId}" />
  <c:out value="${name}"></c:out>
    <c:out value= "${param.chkoutDate}"></c:out>
  	<c:if test="${param.hotelId != null}">
  	<c:out value="${name}"></c:out>
    <jsp:useBean id="beanDao" class="com.infinite.HMproject.HotelDetailsDAO"/>
	<jsp:useBean id="beanBook" class="com.infinite.HMproject.RoomBooking" />
	
		<jsp:setProperty property="roomId" name="beanBook" />
		<jsp:setProperty property="customerId" name="beanBook" />
		
		
		
		<fmt:parseDate value="${param.chkinDate}" pattern="yyyy-MM-dd" var="cdate1"/>
		<c:set var="sqlDate1" value="${beanDao.convertDate(cdate1)}"/>
		
		<fmt:parseDate value="${param.chkoutDate}" pattern="yyyy-MM-dd" var="cdate2"/>
		<c:set var="sqlDate2" value="${beanDao.convertDate(cdate2)}"/>
		
		<jsp:setProperty property="chkinDate" name="beanBook" value="${sqlDate1}"/>
		<jsp:setProperty property="chkoutDate" name="beanBook" value="${sqlDate2}"/>
		
		<jsp:setProperty property="hotelId" name="beanBook" />
		
		<c:out value="${beanDao.bookingRoom(beanBook)}"></c:out>
		
		 <br/><br/>
	</c:if>
	<c:out value= "${name}"></c:out>


 

</body>
</html>