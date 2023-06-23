<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
   <head>
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <title>ABC Jobs | <%= request.getParameter("HTMLtitle") !=null ? request.getParameter("HTMLtitle") : "Welcome" %></title>
     <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" 
     	   rel="stylesheet">
     <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
     <link href="<%= request.getParameter("isNested") == null ? "css/zephyr.css" : request.getParameter("isNested") %>" rel="stylesheet">
     <link href="css/over.css" rel="stylesheet">
     
     <style> 
		nav {
			background-color: #00aaaa;
		}
		 
		.courier-new {
			font-family: "Courier New", sans-serif;
		}
		
		.comic-sans {
			font-family: "Comic Sans MS", "Comic Sans", cursive;
		}
		
		.button {
			border: 2px solid #00aaaa;
			border-radius: 5px;
			transition-duration: 0.2s;
			text-decoration: none;
			color: white;
			background-color: #00aaaa;
		}
		
		.button:hover {
			background-color: white;
			border: 2px solid #00aaaa;
			color: #00aaaa;
		}
		
		.button:active {
			background-color: #02bbbb;
			color: white;
		}
		
		.button2 {
			border: 2px solid white;
			border-radius: 5px;
			transition-duration: 0.2s;
			text-decoration: none;
			color: #00aaaa;
			background-color: white;
		}
		
		.round-top {
			border-top-left-radius: 5px; 
			border-top-right-radius: 5px;
		}
		
		.button2:hover {
			background-color: #00aaaa;
			border: 2px solid white;
			color: white;
		}
		
		.button2:active {
			background-color: white;
			color: #00aaaa;
		}
		
		.bg-color{
			background-color: #00aaaa;
		}
		
		.bg-table {
			background-color: #ebebeb;
		}
		
		.color-table {
			color: #ebebeb;
		}
		
		.color {
			color: #00aaaa;
		}
		
		.form-width {
			width: 85%;
		}
		
		.margin-auto {
			margin: auto;
		}
		
		.grayish {
			background-color: #f9f9f9;
		}
		
		.text-deco-none {
			text-decoration: none;
		}
		
		.dark-cyan {
			color: #007e7e;
		}
		
		.def-bg-color {
			background-color: #f5f5f5fd;
		}
      </style>
   </head>

    <body class="d-flex flex-column min-vh-100" style="font-family: 'Poppins', sans-serif;">
    <jsp:include page="navbar.jsp"></jsp:include>
 