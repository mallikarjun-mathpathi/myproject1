<%@page import="com.bean.Student"%>
<%@page import="com.stdreg.StdDao"%>
<jsp:useBean id="std" class="com.bean.Student"></jsp:useBean>
<jsp:setProperty property="*" name="std" />


<%
	//int id = Integer.parseInt(request.getParameter("id")) ;
	/* System.out.println("upside " + std.getStdId()); 
	System.out.println(std.getStdName());
	out.println("editstudent stdid=" + std.getStdId());  */


int i=StdDao.update(std);
/* 		System.out.println("Status =" + i);
		out.println("editstudent stdid=" + std.getStdId());  
		System.out.println("editstudent stdid=" + std.getStdId());  
		System.out.println("editstudent gender=" + std.getGender());  */ 
response.sendRedirect("viewstudents.jsp");  
%>