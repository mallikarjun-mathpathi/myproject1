<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>

<%@page import="com.std.Address.Std_Adress_Dao,com.std.Address.Std_Adress_Bean"%>

<jsp:useBean id="stdads" class="com.std.Address.Std_Adress_Bean"></jsp:useBean>
<jsp:setProperty property="*" name="stdads"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <% int id= stdads.getStdId(); %> 

<%

int i=Std_Adress_Dao.save(stdads);
if(i>0){
	
out.write("<script type='text/javascript'>\n");
out.write("alert('Record successfully saved!')  ");

out.write("</script>\n");

out.println("Record successfully saved!");
request.setAttribute("stdid", id);
response.sendRedirect("Form3stdReg.jsp?id=" + id);
//response.sendRedirect("addstd.jsp");  

}else{
	/* <>out.write("<script type='text/javascript'>\n");
	out.write("alert('Record not successfully !')  ");
	out.write("</script>") */
	// <% response.sendRedirect("addstd.jsp");  */
out.println("Error data not saved!"); 

}
%>
</br><a href="viewstudents.jsp">View all Address</a>
//<%-- <% response.sendRedirect("addstd.jsp"); %> --%>
</body>
</html>