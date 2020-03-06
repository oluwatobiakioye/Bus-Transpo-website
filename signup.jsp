<%-- 
    Document   : signup
    Created on : 10-Jan-2020, 13:53:49
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="javax.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="signupcss.css">
        <title>JSP Page</title>
    </head>
    <body>
        <html>
<head>
	<title>Create a Dropdown Navigation Bar</title>
	<link rel="stylesheet" type="text/css" href="Signup.css">
</head>
<body>
    <div class="pic">
	<ul class="breadcrumb">
  		<li><a href="homepage.jsp">Book now</a></li>
  		<li><a href="newjsp.jsp">Login</a></li>
  		<li><a href="signup.jsp">Sign Up</a></li>
	</ul>
	<h1><a href="homepage.jsp">BLAZE<br></a></h1>
		<div class="navbar">
			<a href="">Contact Us</a>
			<a href="">Careers</a>
			<a href="">Gallery</a>
			<a href="">Services</a>
			<a href="">About Us</a>
			<a href="homepage.jsp">Home</a>
				
		</div>
		<div class="table">
		<h2>Fill the Form</h2>
		<hr>
		<p>It's free and always will be</p>
                <form name="signup" action="signin.jsp" method="POST">
                    <table class="table2">
			<tr>
                            <th>First Name:<br><input type="text" name="fname"></th>
                            <th>Last Name:<br><input type="text" name="lname"></th>
			</tr>
			<tr>
                            <th colspan="2">Email:<br><input type="text" name="mail" size="46"></th>
			</tr>
                        <tr>
                            <th colspan="2">Password:<br><input type="Password" name="password" size="46"></th>
			</tr>
			<tr>
                            <th>Phone:<br><input type="text" name="phone"></th>
                            <th>Gender:
				<br>
				<select name="gender"
                                    <option>Male</option>
                               	    <option>Female</option>
                                    <option>Others</option>
                                </select>
                            </th>
			</tr>
			<tr>
                            <th colspan="2">Address 1:<br><input type="text" name="add1" size="46"></th>
			</tr>
			<tr>
                            <th colspan="2">Address 2:<br><input type="text" name="add2" size="46"></th>
			</tr>
			<tr>
                            <th>City:<br><input type="text" name="city"></th>
                            <th>Nation:
				<br>
                                <select name="nation">
                                    <option>Nigeria</option>
                                    <option>United States</option>
                                    <option>London</option>
				</select>
                            </th>
			</tr>			
                    </table>
                    <input type="submit" name="submit" value="Sign Up">    
                </form>
            </div>	
	</body>
</html>
