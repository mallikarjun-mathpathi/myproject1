<%@ page import="java.sql.*" %>
<%ResultSet resultset1=null;%>
<HTML>
<HEAD>
    <TITLE>Get Exam Details From DATABASE</TITLE>
</HEAD>

<BODY BGCOLOR=##f89ggh>

<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = 
         DriverManager.getConnection
            ("jdbc:mysql://localhost:3306/temp?user=root&password=");

       Statement statement = connection.createStatement() ;

       resultset1 =statement.executeQuery("select * from examdtl") ;
       
         
%>

<%-- <center>
    <h1> Drop down box or select element</h1>
        <select>
        <%  while(resultset1.next()){ %>
            <option value="resultset1.getString(2)" ><%= resultset1.getString(2)%></option>
        <% } %>
        </select>
          <select>
        <%  while(resultset1.previous()){ %>
            <option><%= resultset1.getString(3)%></option>
        <% } %>
        
        </select>
          <select>
             <option disabled selected value> -- select an option -- </option>
        <%  while(resultset1.next()){ %>
             <option><%= resultset1.getString(4)%></option>
        <% } %>
             </select>
             
</center> --%>


 
<form action="exammarksadd.jsp" method="get">
		<table style="with: 50%">
			<h3 style="text-align:center">Get Exam Details From DATABASE</h3><br><br>
			<tr>
				<th>Student ID</th>
				<th>Exam ID</th>
				<th>Exam Type</th>
				<th>Exam Date</th>
				<th>Course</th>
				<th>Subject</th> <th>Total Marks</th><th>Semester</th> </tr>
			<tr>

				<td><input type="text" name="stdid" /></td>
					<td>
						<select name="examid">
				             <option disabled selected value> -- select an option -- </option>
				        <%  while(resultset1.next()){ %>
				             <option value="<%= resultset1.getString(1)%>"><%= resultset1.getString(1)%></option>
				        <% } %>
				            
				 </select>
			</td> 



				<td> <select name="examtype">
           				  <option disabled selected value> -- select an option -- </option>
    		  				  <%  while(resultset1.previous()){ %>
            			 <option><%= resultset1.getString(2)%></option>
       						 <% } %>
           				  </select></td>
				<td> <select>
            		 <option disabled selected value> -- select an option -- </option>
       				 <%  while(resultset1.next()){ %>
      			       <option><%= resultset1.getString(3)%></option>
     				   <% } %>
      			       </select>	
					</td>
				<td>	<select> 
						<option disabled selected value> -- select an option -- </option>
       				 <%  while(resultset1.previous()){ %>
      			       <option><%= resultset1.getString(4)%></option>
     				   <% } %>
						</select>
					
				</td>
				
				<td>	<select> 
						<option disabled selected value> -- select an option -- </option>
       				 <%  while(resultset1.next()){ %>
      			       <option><%= resultset1.getString(5)%></option>
     				   <% } %>
						</select>
					
				</td>
				<td>	<select> 
						<option disabled selected value> -- select an option -- </option>
       				 <%  while(resultset1.previous()){ %>
      			       <option><%= resultset1.getString(6)%></option>
     				   <% } %>
						</select>
					
				</td>
				<td>	<select> 
						<option disabled selected value> -- select an option -- </option>
       				 <%  while(resultset1.next()){ %>
      			       <option><%= resultset1.getString(7)%></option>
     				   <% } %>
						</select>
					
				</td>
			</tr>
<!-- 	<td><select name="course">
	<option disabled selected value> -- select a Course -- </option>
						<option value="puc_science">PUC-Science</option>
						<option value="puc_arts">PUC-Arts</option>
						<option value="puc_commerce">PUC-Commerce</option>
						<option value="ba">BA</option>
						<option value="bca">BCA</option>
						<option value="bsc_agr">Bsc-Agriculture</option>
						<option value="bsc_ani">Bsc-Animation</option>
						<option value="bsc_aqu">Bsc-Aquaculture</option>
						<option value="bsc_bioch">Bsc-Biochemistry</option>
						<option value="bsc_bioinfo">Bsc-Bioinformatics</option>
						<option value="bsc_cs">BSc-Computer Sci</option>
						<option value="bsc_die">Bsc-Dietetics</option>
						<option value="others">Others</option>
						
				</select></td>


	<td><select name="semester">
	<option disabled selected value> -- select a Semester -- </option>
						<option value="non_sem">Non-Semester</option>
						<option value="sem1">Sem-I</option>
						<option value="sem2">Sem-II</option>
						<option value="sem3">Sem-III</option>
						<option value="sem4">Sem-IV</option>
						<option value="sem5">Sem-V</option>
						<option value="sem6">Sem-VI</option>
						
						<option value="repeater_sem1">Repeater Sem-I</option>
						<option value="repeater_sem2">Repeater Sem-II</option>
						<option value="repeater_sem3">Repeater Sem-III</option>
						<option value="repeater_sem4">Repeater Sem-IV</option>
						<option value="repeater_sem5">Repeater Sem-V</option>
						<option value="repeater_sem6">Repeater Sem-VI</option>
						<option value="others">Others</option>
						
				</select></td>

			</tr> -->

		</table>

		<input type="submit" value="Submit" />
	</form> 
<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

</BODY>
</HTML>