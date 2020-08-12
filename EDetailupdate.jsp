<%@page import="com.std.EDtail.Std_EDetail_Bean"%>
<%@page import="com.std.EDtail.Std_EDetail_Dao"%>
<jsp:useBean id="stdexm" class="com.std.EDtail.Std_EDetail_Bean" ></jsp:useBean>
<jsp:setProperty property="*" name="stdexm" />


<%
int i=Std_EDetail_Dao.update(stdexm);
out.println("Record Updated successfull");  
response.sendRedirect("EDetailview.jsp");   
%>