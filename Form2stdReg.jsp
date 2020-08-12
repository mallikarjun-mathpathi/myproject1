<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>




<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Personal Details Form2</title>

<style>
.MainFormDiv {
   	width: 100px;
	height: 100px;
	background-color: red;
	
	position: absolute;
	top:0;
	bottom: 0;
	left: 0;
	right: 0;
  	
	margin-top: 10px;
	margin-right:auto;
	margin-bottom:auto;
	margin-left:auto;
  text-align: center;
   width:450px; height:630px;
  border: solid 1px #555;
  background-color: #eed;
  box-shadow: 10px -10px 5px  rgba(0,0,0,0.6);
  -moz-box-shadow: 10px -10px 5px  rgba(0,0,0,0.6);
  -webkit-box-shadow: 10px -10px 5px  rgba(0,0,0,0.6);
  -o-box-shadow: 10px -10px 5px  rgba(0,0,0,0.6);
  border-radius:25px;
}
</style>
</head>
<body bgcolor="#F2EFFB">


<%@page import="com.std.Address.Std_Adress_Bean,com.std.Address.Std_Adress_Dao"%>

<%! String temp=""; %>
<% String tem=request.getParameter("temp"); %>


<%-- <% String id=request.getParameter("stdId"); 
System.out.println(id);
  Std_Adress_Bean stdads=Std_Adress_Dao.getRecordById(Integer.parseInt(id));  %> --%>


<h1></h1>
<div class="MainFormDiv">
<form action="addingstd1.jsp" method="post" >
			<table style="width: 70%"  >
			<h2> Permanent Address Details</h2>
			<tr>
					<td>Student id</td>
					<td><input type="text" name="stdId"  value=<%=request.getParameter("id")%> readonly="readonly" /></td>
				</tr>
				<tr>
				<tr>
					<td>Home No*</td>
					<td><input type="text" name="homeno" id="phomeno" required=""  /></td>
				</tr>
				<tr>
					<td>Street</td>
					<td><input type="text" name="street" id="pstreet" /></td>
				</tr>
				<tr>
					<td>village </td>
					<td><input type="text" name="village" id="pvillage" /></td>
				</tr>
				<tr>
					<td>City*</td>
					<td><input type="text" name="city" id="pcity" required="" /></td>
				</tr>
				<tr>
					<td>Dist*</td>
					<td><input type="text" name="dist" id="pdist" required="" /></td>
				</tr>
					<tr>
					<td>Pin Code*</td>
					<td><input type="text" name="pincode" id="ppincode" required="" /></td>
				</tr>
				
				<tr>
					<td>State*</td>
					<td><input type="text" name="state" id="pstate" required="" /></td>
				</tr>
				<tr>
					<td>Country*</td>
					<td><input type="text" name="country" id="pcountry" required="" /></td>
				</tr>
				</table>
				
	
	
	

<table style="width: 70%" >
			<h3> Temporary Address Details</h3>
			<h4><input type="checkbox" id="ch" onclick="copy()" /> Same as Permanent Address	</h4>
				<tr>
					<td>Home No*</td>
					<td><input type="text" name="tmp_homeno" id="thomeno" required="" /></td>
				</tr>
				<tr>
					<td>Street</td>
					<td><input type="text" name="tmp_street" id="tstreet"/></td>
				</tr>
				<tr>
					<td>village </td>
					<td><input type="text" name="tmp_village" id="tvillage"/></td>
				</tr>
				<tr>
					<td>City*</td>
					<td><input type="text" name="tmp_city" id="tcity" required="" /></td>
				</tr>
				<tr>
					<td>Dist*</td>
					<td><input type="text" name="tmp_dist" id="tdist" required="" /></td>
				</tr>
					<tr>
					<td>Pin Code*</td>
					<td><input type="text" name="tmp_pincode" id="tpincode" required="" /></td>
				</tr>
				
				<tr>
					<td>State*</td>
					<td><input type="text" name="tmp_state" id="tstate" required="" /></td>
				</tr>
				<tr>
					<td>Country*</td>
					<td><input type="text" name="tmp_country" id="tcountry" required="" /></td>
				</tr> 
	<tr><td >	</td> <td><input type="submit" onmousemove="Color('blue')" value="Submit" /></td></tr>
				</table>
	</form>
</div>				
<% out.print("Today is:  "+java.util.Calendar.getInstance().getTime()); %>  





<script type="text/javascript">
function copy() {
	if(ch.checked==true)
		{
			document.getElementById('thomeno').value = document.getElementById('phomeno').value
	
			document.getElementById("thomeno").readOnly = true; 
			 document.getElementById("thomeno").style.backgroundColor = '#EDEDED'; 
			 
			document.getElementById('tstreet').value = document.getElementById('pstreet').value;
			/* document.getElementById("tstreet").disabled = true; */
			document.getElementById("tstreet").readOnly = true; 
			 document.getElementById("tstreet").style.backgroundColor = '#EDEDED'; 
			
			document.getElementById('tvillage').value = document.getElementById('pvillage').value;
			document.getElementById("tvillage").readOnly = true;
			 document.getElementById("tvillage").style.backgroundColor = '#EDEDED'; 
			 
			document.getElementById('tcity').value = document.getElementById('pcity').value;
			document.getElementById("tcity").readOnly = true;
			 document.getElementById("tcity").style.backgroundColor = '#EDEDED'; 
			
			document.getElementById('tdist').value = document.getElementById('pdist').value;
			document.getElementById("tdist").readOnly = true;
			 document.getElementById("tdist").style.backgroundColor = '#EDEDED'; 
			document.getElementById('tpincode').value = document.getElementById('ppincode').value;
			document.getElementById("tpincode").readOnly = true;
			 document.getElementById("tpincode").style.backgroundColor = '#EDEDED'; 
			
			document.getElementById('tstate').value = document.getElementById('pstate').value;
			document.getElementById("tstate").readOnly = true;
			document.getElementById("tstate").style.backgroundColor = '#EDEDED'; 
			document.getElementById('tcountry').value = document.getElementById('pcountry').value;
			document.getElementById("tcountry").readOnly = true;
			document.getElementById("tcountry").style.backgroundColor = '#EDEDED'; 
		}
	else
		{
		document.getElementById('thomeno').value="";
			document.getElementById('tstreet').value ="";
			document.getElementById("thomeno").disabled = false;
			 document.getElementById("thomeno").style.backgroundColor = ""
			document.getElementById('tstreet').value ="";
			 document.getElementById("tstreet").style.backgroundColor = ""
			
			document.getElementById('tvillage').value ="";
			 document.getElementById("tvillage").style.backgroundColor = ""
			
			document.getElementById('tcity').value ="";
			 document.getElementById("tcity").style.backgroundColor = ""
			
			document.getElementById('tdist').value ="";
			 document.getElementById("tdist").style.backgroundColor = ""
			
			document.getElementById('tpincode').value ="";
			 document.getElementById("tpincode").style.backgroundColor = ""
			
			document.getElementById('tstate').value ="";
			 document.getElementById("tstate").style.backgroundColor = ""
			
			document.getElementById('tcountry').value ="";
			 document.getElementById("tcountry").style.backgroundColor = ""
		}
}
</script>
			
</body>
</html>