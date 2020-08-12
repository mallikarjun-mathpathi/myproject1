<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
.myDiv {
   	width: 100px;
	height: 100px;
	background-color: red;
	
	position: absolute;
	top:0;
	bottom: 0;
	left: 0;
	right: 0;
  	
	margin: auto;
  text-align: center;
   width:350px; height:500px;
  border: solid 1px #555;
  background-color: #eed;
  box-shadow: 10px -10px 5px  rgba(0,0,0,0.6);
  -moz-box-shadow: 10px -10px 5px  rgba(0,0,0,0.6);
  -webkit-box-shadow: 10px -10px 5px  rgba(0,0,0,0.6);
  -o-box-shadow: 10px -10px 5px  rgba(0,0,0,0.6);
  border-radius:25px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form1</title>
</head>
<body bgcolor="#FBFBEF">



  <div class="myDiv">



<h1>Student Register Form1</h1>
<%-- <%response.setHeader("Cache-Control", "no-cache,no-strore,must-revalidate"); %> --%>
<h2> Personal Details</h2>
<form action="addingstd.jsp" method="post">


			<table style="with: 50%">
			
				<tr>
					<td>Student ID <span class="imp">*</span></td>
					<td><input type="text"  name="stdId" required="required" /></td>
				</tr>
				<tr>
					<td>Student Name <span class="imp">*</span></td>
					<td><input type="text" name="stdName" required="required" /></td>
				</tr>
				<tr>
					<td>Last Name </td>
					<td><input type="text" name="lastName" /></td>
				</tr>
				<tr>
					<td>Father Name <span class="imp">*</span></td>
					<td><input type="text" name="fatherName" required="required" /></td>
				</tr>
				<tr>
					<td>Mother Name <span class="imp">*</span></td>
					<td><input type="text" name="motherName" required="required" /></td>
				</tr>
					<tr>
					<td>Date of Birth <span class="imp">*</span></td>
					<td><input type="text" name="dob"  required="required" /></td>
				</tr>
				
				<tr>
					<td>Contact No<span class="imp">*</span></td>
					<td><input type="text" name="contact" pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]" title="Please Enter 10 Digit Mobil No " /> </td>
				</tr>
				<tr>
					<td>Gender <span class="imp">*</span></td>
					<td>  <input type="radio" name="gender" value="Male" checked> Male
 						 <input type="radio" name="gender" value="Female"> Female<br> </td>
				</tr>
				<tr><td></td></tr>
				</table></br>
			<input type="submit" value="Save & Next" width="100"/></form>
		</div>	
</body>
</html>