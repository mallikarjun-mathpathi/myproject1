<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ViewExamMarks</title>
</head>
<body>
<%@page import="com.exam.examDao,com.exam.examBean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1 style="text-align:center">Exam Entries List </h1>

<%
	List<com.exam.examBean> list=examDao.getAllRecords();
request.setAttribute("list",list);
%>
<table border="1" bordercolor="CDE0FF" width="90%" >
<tr><th>Student Id</th><th>Exam ID</th><th>Exam Type</th><th>Exam Date</th><th>Course </th><th>Semester</th><th>Edit</th><th>Delete</th>  </tr>
<c:forEach items="${list}" var="exm">
	<%-- <tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td><td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td><td><a href="editform.jsp?id=${u.getId()}">Edit</a></td><td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr> --%>
<tr><%-- <td>${exm.getId()} </td>  --%>

 <td>${exm.getStdid()}</td> 
 <td>${exm.getExamid() }</td>
  <td>${exm.getExamtype() }</td>
 <td>${exm.getExamdate() }</td>
 <td>${exm.getCourse() }</td>
  <td>${exm.getSemester() }</td>
 
 <td><a href="exmEditForm.jsp?id=${exm.getStdid()}">Edit</a></td>
 <td><a href="examDelete.jsp?id=${exm.getStdid()}">Delete</a></td></tr>
	
</c:forEach> 
</table>
<br/><a href="examForm.jsp">Create New Exam Schedule</a>

</body>
</html>