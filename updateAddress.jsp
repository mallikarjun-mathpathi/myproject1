<%@page import="com.std.Address.Std_Adress_Bean"%>
<%@page import="com.std.Address.Std_Adress_Dao"%>
<jsp:useBean id="stdads" class="com.std.Address.Std_Adress_Bean"></jsp:useBean>
<jsp:setProperty property="*" name="stdads" />


<%
int i=Std_Adress_Dao.update(stdads);
response.sendRedirect("views_Adress.jsp");  
%>