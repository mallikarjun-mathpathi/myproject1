<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<body>

<%@page import="com.stdreg.StdDao,com.bean.Student.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Student List</h1>

<%
	List<com.bean.Student> list=StdDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" bordercolor="CDE0FF" width="90%" >
<tr><th>Student Id</th><th>Student Name</th><th>Last Name</th><th>Father Name</th><th>Mother Name</th><th>Date Of Birth</th><th>Contact</th><th>Gender</th><th>More</th><th>Edit</th><th>Delete</th></th><th>Photo</th>  </tr>
<c:forEach items="${list}" var="std">
	<%-- <tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td><td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td><td><a href="editform.jsp?id=${u.getId()}">Edit</a></td><td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr> --%>
<tr><td>${std.getStdId()} </td> 
<td>${std.getStdName()}</td>
 <td>${std.getLastName() }</td>
 <td>${std.getFatherName()}</td>
 <td>${std.getMotherName()}</td>
 <td>${std.getDob()}</td>
 <td>${std.getContact() }</td>
 <td>${std.getGender()} </td>
 
  <td><a href="views_Adress.jsp?stdId=${std.getStdId()}">More Details</a></td>
 <td><a href="editform.jsp?stdId=${std.getStdId()}">Edit</a></td>
 <td><a href="deletestd.jsp?stdId=${std.getStdId()}">Delete</a></td>

	 <td><img src="images/Passport2.jpg"  height="50" width="100" alt="Image"  /> </td></tr>
</c:forEach> 
</table>

<br/>
<br/><a href="index.html"><b>Click to Home Page<b/></a> <br/>
<br/><a href="Form1stdReg.jsp">Add New User</a> <br/>
<br/><a href="viewstudents.jsp">View All</a> <br/>
<br/><a href="searchForm.html">Search</a> <br/>

</body>
</html>