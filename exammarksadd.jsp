<%@page import="com.exam.examBean,com.exam.examDao"%>
<jsp:useBean id="exm" class="com.exam.examBean"></jsp:useBean>
<jsp:setProperty property="*" name="exm"/>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int i=examDao.save(exm);
if(i>0){
	out.println("Record successfully saved!"); }
	else{
		out.println("Record unsuccessfully !"); 
}

%>

</br><a href="exmMrkView.jsp">View all ExamMarks</a>
</body>
</html>