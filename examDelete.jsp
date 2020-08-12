<%@page import="com.exam.examBean,java.util.*"%>
<%@page import="com.exam.examDao" %>
<jsp:useBean id="exm" class="com.exam.examBean"></jsp:useBean>
<jsp:setProperty property="*" name="exm"/>


<%
examDao.delete(exm);
out.println("Record Deleted successfully !");
/* response.sendRedirect("exmMrkView.jsp"); */
%>
<a href="exmMrkView.jsp">Click to View Exam Schedules</a>
