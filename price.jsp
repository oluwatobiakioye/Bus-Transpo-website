<%-- 
    Document   : price
    Created on : 12-Jan-2020, 19:05:56
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="javax.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRICE!!</title>
        <link rel="stylesheet" type="text/css" href="price.css">      
    </head>
    <body>
        <div class="pic">
            <ul class="breadcrumb">
  		<li><a href="homepage.jsp">Book now</a></li>
  		<li><a href="newjsp.jsp">Login</a></li>
  		<li><a href="signup.jsp">Sign Up</a></li>
	</ul>
	<h1><a href="BusProject.html">Blaze<br></a></h1>
		<div class="navbar">
			<a href="">Contact Us</a>
			<a href="">Careers</a>
			<a href="">Gallery</a>
			<a href="">Services</a>
			<a href="">About Us</a>
			
    			
  				
		</div>
            <table border='2' style="width:100%"  class="table">
                <tr>
                    <th>Starting Point</th>
                    <th>Destination</th>
                    <th> Price</th>
                    <th>-------</th>
                </tr>
                <tr>
                    <td>lagos</td>
                    <td>Abuja</td>
                    <td>1000</td>
                    <td>
                         <form>
                            <input type="button" onclick="window.location.href = 'pay.jsp' " ; value="Order  "/>
                        </form> 
                    </td>    
                </tr>
                <tr>
                    <td>Ogun</td>
                    <td>Port Harcourt</td>
                    <td>1000</td>
                    <td>
                        <form>
                            <input type="button" onclick="window.location.href = 'pay.jsp' " ; value="Order  "/>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>Yobe</td>
                    <td>Kaduna</td>
                    <td>1000</td>
                    <td>
                         <form>
                            <input type="button" onclick="window.location.href = 'pay.jsp' " ; value="Order  "/>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td>Borno</td>
                    <td>Benin</td>
                    <td>1000</td>
                    <td>
                         <form>
                            <input type="button" onclick="window.location.href = 'pay.jsp' " ; value="Order  "/>
                        </form>
                    </td>
                    </tr>
                    <tr>
                      <td>Delta</td>
                      <td>Akwa Ibom</td>
                      <td>1000</td>
                      <td>
                         <form>
                            <input type="button" onclick="window.location.href = 'pay.jsp' " ; value="Order  "/>
                        </form>
                      </td>
                    </tr>
            </table>
        </div>
    </body>
</html>
