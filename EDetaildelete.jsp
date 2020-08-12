<%@page import="com.std.EDtail.Std_EDetail_Bean,java.util.*"%>
<%@page import="com.std.EDtail.Std_EDetail_Dao" %>
<jsp:useBean id="stdexm" class="com.std.EDtail.Std_EDetail_Bean"></jsp:useBean>
<jsp:setProperty property="*" name="stdexm"/>


<%
String exm=request.getParameter("examid");
System.out.print("examid" + exm );

System.out.println(stdexm.getExamid());
Std_EDetail_Dao.delete(stdexm);
out.println("Record Deleted successfully !");

%>
<br><br>
<a href="EDetailview.jsp">View Exam</a>