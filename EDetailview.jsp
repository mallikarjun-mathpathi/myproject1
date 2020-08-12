  <!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<body>

<%@page import="com.std.EDtail.Std_EDetail_Bean.*,com.std.EDtail.Std_EDetail_Dao,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Student ADDRESS List</h1>

<%
List<com.std.EDtail.Std_EDetail_Bean> list=Std_EDetail_Dao.getAllRecordsForEDetail();
request.setAttribute("list",list);
%>
<table border="1" bordercolor="CDE0FF" width="90%" >
<tr> <td colspan="10" align="center"><b>student p</b></td></tr>
<tr><th>Examid</th><th>Examtype</th><th>Examdate</th><th>Coursename</th><th>Subject</th><th>Totalmark</th><th>Semsectype</th><th>Nosemsec</th><th>update</th><th>Delete</th></tr></tr>
<c:forEach items="${list}" var="stdexm">
<tr><td>${stdexm.getExamid()}</td>
<td>${stdexm.getExamtype()}</td>
<td>${stdexm.getExamdate()}</td>
<td>${stdexm.getCoursename()}</td>
<td>${stdexm.getSubject()}</td>
<td>${stdexm.getTotalmark()}</td>
<td>${stdexm.getSemsectype()}</td>
<td>${stdexm.getNosemsec()}</td> 
<td>  <a href="EDetailedit.jsp?Examid=${stdexm.getExamid()}">edit</a> </td>
<td>  <a href="EDetaildelete.jsp?examid=${stdexm.getExamid()}">Delete</a> </td>

</tr>
</c:forEach>
</table>
	
<br/><a href="EDetail.jsp">Add New User</a>
<br/><a href="search.jsp">search</a>

</body>
</html>


