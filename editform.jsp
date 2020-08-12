<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
<%@page import="com.stdreg.StdDao,com.bean.Student"%>

<%
String id=request.getParameter("stdId");
Student std=StdDao.getRecordById(Integer.parseInt(id));
//out.println("editform std id=" + id);
//System.out.println("editform gender=" + std.getGender()); 
%> 
<!-- System.out.println(std.getGender()) -->
<h1>Edit Form</h1>
<form action="editstudent.jsp" method="get">
<input type="hidden" name="stdId" value="<%=std.getStdId() %>"/>



<table>
<tr><td>Student Name:</td><td>			<input type="text" name="stdName" 	value="<%= std.getStdName()%>"	/></td></tr>
<tr><td>Student last Name:</td><td>		<input type="text" name="lastName" 	value="<%= std.getLastName()%>"	/></td></tr>
<tr><td>Student Father Name:</td><td>	<input type="text" name="fatherName" value="<%= std.getFatherName()%>"/></td></tr>
<tr><td>Student Mother Name:</td><td>	<input type="text" name="motherName" value="<%= std.getMotherName()%>"/></td></tr>
<tr><td>Student Date of Birth:</td><td>	<input type="text" name="dob" 		value="<%= std.getDob()%>"/></td></tr>
<tr><td>Student contact:</td><td>		<input type="text" name="contact" value="<%= std.getContact()%>"/></td></tr>
<tr><td>Gender :</td><td>  <input type="radio" name="gender" value="Male" checked="checked"> Male <input type="radio" name="gender" value="Female"> Female </td> </tr>
<tr><td colspan="2"><input type="submit" value="EditUser"/></td></tr>
</table>
</form>

</body>
</html>