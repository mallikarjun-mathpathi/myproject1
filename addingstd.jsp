<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>

<%@page import="com.stdreg.StdDao,com.bean.Student"%>

<jsp:useBean id="std" class="com.bean.Student"></jsp:useBean>
<jsp:setProperty property="*" name="std"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
 <% int id= std.getStdId(); %> 

<%
response.setHeader("Cache-Control", "no-cache,no-strore,must-revalidate");
int i=StdDao.save(std);
if(i>0){
	
out.write("<script type='text/javascript'>\n");
out.write("alert('Record successfully saved!')  ");

out.write("</script>\n");

out.println("Record successfully saved!"); 
request.setAttribute("stdid", id);
response.sendRedirect("Form2stdReg.jsp?id=" + id); 



}else{
	/* out.write("<script type='text/javascript'>\n");
	out.write("alert('Record not successfully !')  ");
	out.write("</script>"); */
	// <% response.sendRedirect("addstd.jsp");  
 out.println("Error data not saved!" ); 
}
%>
<a href="viewstudents.jsp">View all</a>
<%-- <% response.sendRedirect("addstd.jsp"); %> --%>
</body>
</html>