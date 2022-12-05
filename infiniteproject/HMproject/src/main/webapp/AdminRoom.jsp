<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><style>
        	body{
    background-image: url(Hotelslisting.jfif);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
}
form{
    border: 3px solid #808080;
    background-color: #808080;
    width: 380px;
    height: 500px;
    text-align: center;
   padding-left: 1.5%
}
.rooms{
 padding-top: 6%;
}
div{
    font-weight:900;
    color:rgb(56, 34, 200);
}
h1{
    background-color: rgb(10, 10, 36);
    width: 100%;
height: 90px;
    color: white;
    margin-top: 0%;
    padding-top: 1%;
}
#tab{
background-color: white
}
#subbut{
 color: green;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
		<b><h1>HOTEL MANAGEMENT</h1></b>
	</center>
<div class="rooms">
<form method="get" action="ShowRoom.jsp">
<h2>List of Rooms:</h2>
    <jsp:useBean id="beanDao" class="com.infinite.HMproject.HotelDetailsDAO"/>
    <table border='3'  id="tab">
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
              <td><c:out value="${ShowRoom.type}"/> </td>
              <td><c:out value="${ShowRoom.status}"/> </td>
              <td><c:out value="${ShowRoom.costperday}"/> </td>
              <td><c:out value="${ShowRoom.hotelId}"/> </td>
          </tr>
      </c:forEach>
     </table>
          Back to Home :
            <a href="MainPage.jsp">Click Here!</a>
     
</form>
</div>
</body>
</html>