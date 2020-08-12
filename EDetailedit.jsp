<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
<%@page import="com.std.EDtail.Std_EDetail_Dao,com.std.EDtail.Std_EDetail_Bean"%>

 
<%
String id=request.getParameter("Examid");
Std_EDetail_Bean stdexm=Std_EDetail_Dao.getRecordByid(Integer.parseInt(id));
out.println("EDetailedit examid=" +id); 
%> 

<h1>Edit Form</h1>
<form action="EDetailupdate.jsp" method="get">
<input type="hidden" name="examid" value="<%=stdexm.getExamid() %>"/>


<table>

<tr><td>Examtype:</td><td>		<input type="text" name="examtype" 	value="<%= stdexm.getExamtype()%>"	/></td></tr>
<tr><td>Examdate:</td><td>	<input type="text" name="examdate" value="<%= stdexm.getExamdate()%>"/></td></tr>
<tr><td>Coursename:</td><td>	<input type="text" name="coursename" value="<%= stdexm.getCoursename()%>"/></td></tr>
<tr><td>Subject:</td><td>	<input type="text" name="subject" value="<%= stdexm.getSubject()%>"/></td></tr>
<tr><td>Totalmark:</td><td>	<input type="text" name="totalmark" value="<%= stdexm.getTotalmark()%>"/></td></tr>
<tr><td>Semsectype:</td><td>	<input type="text" name="semsectype" 		value="<%= stdexm.getSemsectype()%>"/></td></tr>
<tr><td>Nosemsec:</td><td>		<input type="text" name="nosemsec" value="<%= stdexm.getNosemsec()%>"/></td></tr>
<tr><td colspan="2"><input type="submit" value="update"/></td></tr>
</table>
</form>

</body>
  