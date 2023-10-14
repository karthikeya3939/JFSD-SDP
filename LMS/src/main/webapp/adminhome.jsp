<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="shortcut icon" type="png" href="images/icon/favicon.png">
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Comaptible" content="IE=edge">
 <title>SmartLearn</title>
 <meta name="desciption" content="">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" type="text/css" href="css/style.css">
 <script type="text/javascript" src="script.js"></script>
 <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
 <script>
  $(window).on('scroll', function(){
     if($(window).scrollTop()){
       $('nav').addClass('black');
     }else {
      $('nav').removeClass('black');
    }
  })
 </script>
</head>
<body>

<%@ include file="adminnavbar.jsp" %>


</body>
</html>