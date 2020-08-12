<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.stdreg.StdDao,com.bean.Student"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "temp";
String userid = "root";
String password = "";
String stdid=request.getParameter("roll_no");
String name=request.getParameter("name");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body>
<h1>Searched Data</h1>
<table border="1" bordercolor="CDE0FF" width="90%" >
<tr><th>Student Id</th><th>Student Name</th><th>Last Name</th><th>Father Name</th><th>Mother Name</th><th>Date Of Birth</th><th>Contact</th><th>Gender</th><th>Edit</th><th>Delete</th>  </tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
/* String sql ="select * from std_registration where stdid="+stdid; */
String sql ="select * from std_registration where stdid='" + stdid + "' OR stdname='" + name +"'"; 

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("stdid") %></td>
<td><%=resultSet.getString("stdname") %></td>
<td><%=resultSet.getString("lastname") %></td>
<td><%=resultSet.getString("fathername") %></td>
<td><%=resultSet.getString("mothername") %></td>
<td><%=resultSet.getString("dob") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><a href="editform.jsp?stdId=${std.getStdId()}">Edit</a></td>
 <td><a href="deletestd.jsp?stdId=${std.getStdId()}">Delete</a></td></tr>
</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>






</table>

<table border="1" bordercolor="CDE0FF" width="90%" >
<tr><td colspan="9" align="center"><b>Permanent Address</b></td> <td colspan="10" align="center"><b>Temporary Address</b></td></tr>
<tr><th>Home NO</th><th>Street</th><th>Village</th><th>City</th><th>District</th><th>Pin Code</th><th>State</th><th>Country</th><th>Home NO</th><th>Street</th><th>Village</th><th>City</th><th>District</th><th>Pin Code</th><th>State</th><th>Country</th><th>Edit</th><th>Delete</th>  </tr>


</tr>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql1 ="select * from std_per_address where stdid=" + stdid;/*  + "' OR stdname='" + name +"'"; */
resultSet = statement.executeQuery(sql1);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("homeno") %></td>
<td><%=resultSet.getString("street") %></td>
<td><%=resultSet.getString("village") %></td>
<td><%=resultSet.getString("city") %></td>
<td><%=resultSet.getString("dist") %></td>
<td><%=resultSet.getString("pincode") %></td>
<td><%=resultSet.getString("state") %></td>
<td><%=resultSet.getString("country") %></td>
</br>
<td><%=resultSet.getString("tmp_homeno") %></td>
<td><%=resultSet.getString("tmp_street") %></td>
<td><%=resultSet.getString("tmp_village") %></td>
<td><%=resultSet.getString("tmp_city") %></td>
<td><%=resultSet.getString("tmp_dist") %></td>
<td><%=resultSet.getString("tmp_pincode") %></td>
<td><%=resultSet.getString("tmp_state") %></td>
<td><%=resultSet.getString("tmp_country") %></td>
<td><a href="editformAddress.jsp?stdid=${stdads.getStdId()}">Edit</a></td> 
<td><a href="deletestd.jsp?stdId=${stdads.getStdId()}">Delete</a></td>
</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>