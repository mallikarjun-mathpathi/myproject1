<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form 3</title>
</head>
<body>


	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exams Schedule</title>
</head>
<body bgcolor="#F2EFFB">

	<h1 style="text-align:center">Student Exams Schedule  Details</h1>

	<form action="exammarksadd.jsp" method="get">
		<table style="with: 50%">
			<h3 style="text-align:center">Add Exam Details</h3><br><br>
			<tr>
				<th>Student ID</th>
				<th>Exam ID</th>
				<th>Exam Type</th>
				<th>Exam Date</th>
				<th>Course</th>
				<th>Semester</th>
			<tr>

				<td><input type="text" name="stdid" /></td>
				<td><input type="text" name="examid" /></td>
				<!-- <td><select name="examid" >
				<option disabled selected value> -- select an option -- </option>
						<option value="exam01">Exam-01</option>
						<option value="exam02">Exam-02</option>
						<option value="exam03">Exam-03</option>
						<option value="exam04">Exam-04</option>
						<option value="exam05">Exam-05</option>
						<option value="exam06">Exam-06</option>
						<option value="exam07">Exam-07</option>
						<option value="exam08">Exam-08</option>
						<option value="exam09">Exam-09</option>
						<option value="exam10">Exam-10</option>
				</select></td> -->



				<td><select name="examtype">
				    <option disabled selected value> -- select Exam Type -- </option>
						<option value="1internal">1st-Internal</option>
						<option value="2internal">2nd-Internal</option>
						<option value="1quater">1st-Quarter</option>
						<option value="midterm">MidTerm</option>
						<option value="2quater">2nd-Quarter</option>
						<option value="preboard">Pre-Board</option>
						<option value="annual">Annual</option>
						<option value="regulartype1">Regular Type-1</option>
						<option value="regulartype2">Regular Type-2</option>
						<option value="regulartype3">Regular Type-3</option>
						<option value="regulartype4">Regular Type-4</option>
						<option value="regulartype5">Regular Type-5</option>
						<option value="full_length">Full-Length</option>
						<option value="practical">Practical</option>
						<option value="special_Surprize">Special-Surprize</option>
						<option value="exam10">NEET</option>
						<option value="cet">CET</option>
						<option value="other">Other</option>
				</select></td>
				<td><input type="date" name="examdate" /></td>
				
			
	<td><select name="course">
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

			</tr>

		</table>

		<input type="submit" value="Submit" />
	</form>

</body>
</html>
</body>
</html>