<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Photo</title>
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

</head>
<body>

<div class="MainFormDiv">
	<h4> Upload Student Photo for Id:
	<input type="text" size="4" name="stdId"  value=<%=request.getParameter("id")%> readonly="readonly" /></h4>  
      Select a file to upload: <br />
      <form action = "UploadServlet.jsp" method = "post"
         enctype = "multipart/form-data"> </br>
         <input type = "file" name = "file" size = "50"  />
         </br></br>
         <input type = "submit" value = "Upload File" />
      </form>


</div>

</body>
</html>