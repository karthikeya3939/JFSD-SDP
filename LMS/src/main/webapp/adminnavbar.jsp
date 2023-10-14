<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="shortcut icon" type="image/png" href="images/icon/favicon.png">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> <!-- Corrected attribute -->
    <title>SmartLearn</title>
    <meta name="description" content=""> <!-- Corrected attribute -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript" src="js/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
</head>

<body>
<!-- Navigation Bar -->
 <header id="header">
  <nav>
   <div class="logo"><img src="images/icon/logo.png" alt="logo"></div>
   <ul>
    <li><a class="active" href="adminhome.jsp">Home</a></li>
    <li><a href="admin_student">Student</a></li>
    <li><a href="admin_faculty">Faculty</a></li>
    <li><a href="admin_course">Courses</a></li>
   </ul>
   <div class="srch"><input type="text" class="search" placeholder="Search here..."><img src="images/icon/search.png" alt="search" onclick=slide()></div>
   <a class="get-started" href="login.html">Logout</a>
  </nav>
 </header>
</body>
</html>