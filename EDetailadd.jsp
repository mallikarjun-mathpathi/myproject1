<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>

<%@page import="com.std.EDtail.Std_EDetail_Dao,com.std.EDtail.Std_EDetail_Bean"%>
<<jsp:useBean id="stdexm" class="com.std.EDtail.Std_EDetail_Bean" ></jsp:useBean>
<jsp:setProperty property="*" name="stdexm"/>





<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%

int i=Std_EDetail_Dao.save(stdexm);
if(i>0)
{

out.println("Record successfully saved!");

}else{
out.println("Error data not saved!"); 

}
%>
</br><a href="EDetailview.jsp">View all Address</a>
<%-- <% response.sendRedirect("addstd.jsp"); %> --%>
</body>
</html>