<%@page import="com.stdreg.StdDao,java.util.*"%>
<jsp:useBean id="std" class="com.bean.Student"></jsp:useBean>
<jsp:setProperty property="*" name="std"/>

<%
StdDao.delete(std);
out.println("Record Deleted successfully !");
response.sendRedirect("viewstudents.jsp");
%>
