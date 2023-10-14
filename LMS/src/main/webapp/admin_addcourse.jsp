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

<h3 align=center><u>Add Course</u></h3>

<br>
<center>
<div class="abc" align="center" >
<form:form id="courseForm" method="post" action="insertcourse" modelAttribute="course">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required" placeholder="Course Name"></form:input>
</td>
</tr>

<tr><td></td></tr>

<td><label>Course Code</label></td>
<td>
<form:input path="code" required="required" placeholder="Course Code"></form:input>
</td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<td><label>Course Type</label></td>
<td>
<form:input path="type" required="required" placeholder="Course Type"></form:input>
</td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<td><label>Course Description</label></td>
<td>
<form:input path="desc" required="required" placeholder="Course Description" ></form:input>
</td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<td><label>Start Date</label></td>
<td>
<form:input path="start_date" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>
<td><label>End Date</label></td>
<td>
<form:input path="end_date" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>

<tr><td></td></tr>
<td><label>Seats Available</label></td>
<td>
<form:input path="seats" required="required" placeholder="Enter seats available" ></form:input>
</td>
</tr>

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