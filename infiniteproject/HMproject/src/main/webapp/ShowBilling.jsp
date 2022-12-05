<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="beanDao" class="com.infinite.HMproject.HotelDetailsDAO" />

<form  method="get" action="ShowBilling.jsp">
 <table>
   <tr>
     <th>CustomerId</th>
     <th>RoomId</th>
     <th>BookId</th>
     <th>BillingId</th>
     <th>NoOfDays</th>
     <th>BillAmt</th>
   </tr>
   <c:forEach var="bill" items="${beanDao.showBillings()}">
   	<c:if test="${bill != null}">
   	
   	
   	</c:if>
   
   
   </c:forEach>
   
 
 </table>

</form>

</body>
</html>