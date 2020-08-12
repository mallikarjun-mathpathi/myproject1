<%@page import="com.exam.examDao,com.exam.examBean"%>
<jsp:useBean id="exm" class="com.exam.examBean"></jsp:useBean>
<jsp:setProperty property="*" name="exm" />


<%


int i=examDao.update(exm);
	out.println("Marks updated succussfully </br> ");
	/* response.sendRedirect("viewstudents.jsp");   */

%>
<a href="exmMrkView.jsp">View Marks </a>