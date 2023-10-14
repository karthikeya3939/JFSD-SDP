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

   <style>
        @import url('https://fonts.googleapis.com/css?family=Raleway:300,400,500');
        
        .abc {
            font-family: 'Raleway', sans-serif;
            background: #00B7C2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .frame {
            border: 1px solid #ccc; /* Add a border around the frame */
            padding: 15px;
        }
        .cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .col {
            padding: 20px;
            flex: 0 0 50%; /* Two cards per row */
        }
        .card {
            position: relative;
            color: #fff;
            background-color:lightblue;
            border-radius: 8px;
            overflow: hidden;
        }
        .card-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
            object-position: center;
        }
        .card-title {
            position: relative;
            padding: 20px 25px 5px;
            font-size: 2em;
            font-weight: 500;
        }
        .card-title:before {
            content: '';
            position: absolute;
            left: 25px;
            top: 0;
            width: 50px;
            height: 50px;
            margin-top: -25px;
            background-color: $bg-color;
            border-radius: 50%;
            transform: scale(1);
            opacity: 0.8;
            transition: transform 600ms cubic-bezier(0.86, 0, 0.07, 1), opacity 400ms cubic-bezier(0.075, 0.82, 0.165, 1);
        }
        .card:hover .card-title:before {
            transform: scale(0.6);
            opacity: 0.8;
        }
        .card-description {
            padding: 5px 25px 20px;
        }
  .card-link-button {
            display: block;
            text-align: center;
            padding: 10px;
            background: #345e82;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            margin-top: 10px;
        }
  .card-link-button-container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
    </style>
</head>
<body>
<!-- Navigation Bar -->
<%@ include file="adminnavbar.jsp" %>
<div class="abc">
        <div class="cards">
        <div class="col">
            <div class="card">
                <div class="card-title">Add Course</div>
    <div class="card-link-button-container">
                    <a href="admin_addcourse" class="card-link-button">Go to Add</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card">
                <div class="card-title">View Course</div>
                <div class="card-link-button-container">
                    <a href="#" class="card-link-button">Go to View</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card">
                <div class="card-title">Update Course</div>
                <div class="card-link-button-container">
                    <a href="#" class="card-link-button">Go to Update</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card">
                <div class="card-title">Delete Course</div>
                <div class="card-link-button-container">
                    <a href="#" class="card-link-button">Go to Delete</a>
                </div>
            </div>
        </div>
    </div>
 </div>
</body>
</html>