<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
<%@page import="com.std.Address.Std_Adress_Bean,com.std.Address.Std_Adress_Dao" %>

<%
String stdid=request.getParameter("stdid");
Std_Adress_Bean stdads=Std_Adress_Dao.getRecordById(Integer.parseInt(stdid));
//out.println("editform std id=" + id);
//System.out.println("editform gender=" + std.getGender()); 
%> 
<!-- System.out.println(std.getGender()) -->
<h1>Edit Form</h1>
<form action="updateAddress.jsp" method="post">
<input type="hidden" name="stdId" value="<%=stdads.getStdId() %>"/>



<table>
<tr><td>Home No:</td><td>			<input type="text" name="homeno" 	value="<%= stdads.getHomeno()%>"	/></td></tr>
<tr><td>Street:</td><td>		<input type="text" name="street" 	value="<%= stdads.getStreet()%>"	/></td></tr>
<tr><td>Village</td><td>	<input type="text" name="village" value="<%= stdads.getVillage()%>"/></td></tr>
<tr><td>City</td><td>	<input type="text" name="city" value="<%= stdads.getCity()%>"/></td></tr>
<tr><td>District:</td><td>	<input type="text" name="dist" 		value="<%= stdads.getDist()%>"/></td></tr>
<tr><td>Pin Code:</td><td>		<input type="text" name="pincode" value="<%= stdads.getPincode()%>"/></td></tr>
<tr><td>State</td><td>		<input type="text" name="state" value="<%= stdads.getState()%>"/></td></tr>
<tr><td>Country:</td><td>		<input type="text" name="country" value="<%= stdads.getCountry()%>"/></td></tr>
<tr><td>Home No:</td><td>			<input type="text" name="tmp_homeno" 	value="<%= stdads.getTmp_homeno()%>"	/></td></tr>
<tr><td>Street:</td><td>		<input type="text" name="tmp_street" 	value="<%= stdads.getTmp_street()%>"	/></td></tr>
<tr><td>Village</td><td>	<input type="text" name="tmp_village" value="<%= stdads.getTmp_village()%>"/></td></tr>
<tr><td>City</td><td>		<input type="text" name="tmp_city" value="<%= stdads.getTmp_city()%>"/></td></tr>
<tr><td>District:</td><td>	<input type="text" name="tmp_dist" 		value="<%= stdads.getTmp_dist()%>"/></td></tr>
<tr><td>Pin Code:</td><td>		<input type="text" name="tmp_pincode" value="<%= stdads.getTmp_pincode()%>"/></td></tr>
<tr><td>State</td><td>		<input type="text" name="tmp_state" value="<%= stdads.getTmp_state()%>"/></td></tr>
<tr><td>Country:</td><td>		<input type="text" name="tmp_country" value="<%= stdads.getTmp_country()%>"/></td></tr>


<tr><td colspan="2"><input type="submit" value="Edit&Save"/></td></tr>
</table>
</form>

</body>
</html>