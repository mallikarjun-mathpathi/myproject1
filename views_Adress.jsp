<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Address</title>
</head>
<body>
<%@page import="com.std.Address.Std_Adress_Bean.*,com.std.Address.Std_Adress_Dao,java.util.*" %>
<%-- <%@page import="com.std.Address.Std_Adress_Dao,com.std.Address.Std_Adress_Bean.*"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Student ADDRESS List</h1>

<%
	List<com.std.Address.Std_Adress_Bean> list=Std_Adress_Dao.getAllRecordsForAddress();
request.setAttribute("list",list);
%>

<table border="1" bordercolor="CDE0FF" width="100%" >
<tr><td colspan="9" align="center"><b>Permanent Address</b></td> <td colspan="10" align="center"><b>Temporary Address</b></td></tr>
<tr><th>Student Id</th><th>Home NO</th><th>Street</th><th>Village</th><th>City</th><th>District</th><th>Pin Code</th><th>State</th><th>Country</th><th>Home NO</th><th>Street</th><th>Village</th><th>City</th><th>District</th><th>Pin Code</th><th>State</th><th>Country</th><th>Edit</th><th>Delete</th>  </tr>
<c:forEach items="${list}" var="stdads">
	
<td>${stdads.getStdId()}</td>
<td>${stdads.getHomeno()}</td>
 <td>${stdads.getStreet()}</td>
 <td>${stdads.getVillage()}</td>
 <td>${stdads.getCity()}</td>
 <td>${stdads.getDist() }</td>
 <td>${stdads.getPincode()} </td>
 <td>${stdads.getState()} </td>
 <td>${stdads.getCountry()} </td>
 <td>${stdads.getTmp_homeno()}</td>
 <td>${stdads.getTmp_street()}</td>
 <td>${stdads.getTmp_village()}</td>
 <td>${stdads.getTmp_city()}</td>
 <td>${stdads.getTmp_dist() }</td>
 <td>${stdads.getTmp_pincode()} </td>
 <td>${stdads.getTmp_state()} </td>
 <td>${stdads.getTmp_country()} </td>
  <td><a href="editformAddress.jsp?stdid=${stdads.getStdId()}">Edit</a></td>
  <td><a href="deletestd.jsp?stdId=${stdads.getStdId()}">Delete</a></td></tr>  </tr>
	
</c:forEach> 
</table>


<br/>
<br/><a href="index.html"><b>Click to Home Page<b/></a> <br/>
<br/><a href="Form1stdReg.jsp">Add New User</a> <br/>
<br/><a href="viewstudents.jsp">View All</a> <br/>
<br/><a href="searchForm.html">Search</a> <br/>

</body>
</html>