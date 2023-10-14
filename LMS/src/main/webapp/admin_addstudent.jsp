<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>



.blink {
  animation: blink 1s steps(1, end) infinite;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

.buttoon {
  background-color:RGB(88, 14, 60);
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.abc{
display: inline-block;
text-align: center;
}

.abc input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date],input[type=datetime-local]
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

* {
   box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}

input[readonly] 
{
            background-color: #f0f0f0; /* Gray background color */
            color: #555; /* Gray text color */
            cursor: not-allowed; /* Change cursor to indicate it's not editable */
}


.srch {
	padding: 2px 10px;
	display: flex;
	/* align-items: center; */
	justify-content: center;
	/* background: #0066ff; */
	border: 1px solid;
	border-radius: 20px;
}
.srch img {
	width: 25px;
	cursor: pointer;
}
.srch .search {
	/* padding: 2px 10px; */
	outline: none;
	border: none;
	background: transparent;
}



</style>

</head>
<body>

<%@ include file="adminnavbar.jsp" %>

${message}

<br>

<h3 align=center><u>Add Student</u></h3>

<br>
<center>
<div class="abc" align="center" >
<form:form id="studentForm" method="post" action="insertstudent" modelAttribute="student">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>



<tr>
<td><label>Gender</label></td>
<td>
<form:radiobutton path="gender" value="Male" required="required"/>Male
<form:radiobutton path="gender" value="Female" required="required"/>Female
</td>
</tr>


<tr><td></td></tr>
<tr>
    <td><label>DateOfBirth</label></td>
    <td><form:input path="dob" required="required"/></td>
    </tr>
    
    <tr><td></td></tr>

    <tr>
        <td><label>Program</label></td>
        <td><form:input path="program" required="required"/></td>
        </tr>
        
        <tr><td></td></tr>

        <tr>
            <td><label>Department</label></td>
            <td><form:input path="department" required="required"/></td>
            </tr>
            
            <tr><td></td></tr>
            <tr>
                <td><label>CGPA</label></td>
                <td><form:input path="cgpa" required="required"/></td>
                </tr>
                
                <tr><td></td></tr>


<tr>
<td><label>Email ID</label></td>
<td><form:input path="email" required="required"/></td>
</tr>

<tr><td></td></tr>



<tr>
<td><label>Password</label></td>
<td><form:password path="password" required="required"/></td>
</tr>

<tr><td></td></tr>



<tr>
<td><label>Contact No</label></td>
<td><form:input path="contact" required="required"/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Add" class="buttoon"></td>
</tr>

</table>

</form:form>
</div>
</center>



</body>
</html>