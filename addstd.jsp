<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html height="100%">
<head>
<meta charset="ISO-8859-1">
<title>Services </title>
</head>




<body >

	<div id="serv_content" class="serv_content">
	<h1> Administrator</h1>
	<!-- 	<a href="Form1stdReg.jsp">Add Student </a><br><br>
		<a href="viewstudents.jsp">View All </a><br><br>
		<a href="searchForm.html">Search  </a><br><br> -->
		
		<button onclick="window.location.href='Form1stdReg.jsp'"> Enroll Student</button>
		<button onclick="window.location.href='staffReg.jsp'"> Enroll Staff</button>
		<button onclick="window.location.href='viewstudents.jsp'">View All Student</button>
		<button onclick="window.location.href='searchForm.html'">Search Student</button>
		<button onclick="window.location.href='ExamEntry.html'">Exams</button>
		<button onclick="goBack()">Go Back</button>

	<script>
	function goBack() {
	  window.history.back();
				}
	</script>
	
	</div>		
</body>

<%-- 
int i=deo.save(u);
if(i>0){
response.sendRedirect("added-success");
}else{
response.sendRedirect("adduser-error");
}
 --%>