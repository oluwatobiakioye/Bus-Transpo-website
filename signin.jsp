<%-- 
    Document   : signin
    Created on : 14-Jan-2020, 02:13:24
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*" %>
<%@page import="java.beans.*" %>
<%@page import="java.sql.Statement" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%!
                    String fname, lname, mail, phone, gender, add1, add2, nation, city, password ;
                %>
                <%
                    fname = lname = mail = phone = gender = add1 = add2 = nation = city = password = "";
                    fname = request.getParameter("fname");
                    lname = request.getParameter("lname");
                    mail = request.getParameter("mail");
                    phone = request.getParameter("phone");
                    gender = request.getParameter("gender");
                    add1 = request.getParameter("add1");
                    add2 = request.getParameter("add2");
                    nation = request.getParameter("nation");
                    city = request.getParameter("city");
                    password = request.getParameter("password");
                    if(fname.equals("") || lname.equals("") || mail.equals("") || phone.equals("") || gender.equals("") || add1.equals("") || add2.equals("") || nation.equals("") || city.equals("") || password.equals("")){
                        out.write("Empty fields, make sure you input data into all field before pushing the "+"Submit button");
                    }
                    else
                    {        
                        try{
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/"+"bus project","root","");
                            Statement st = (Statement) conn.createStatement();
                            String sql1 = "INSERT INTO signup VALUES('"+fname+"','"+lname+"','"+mail+"','"+phone+"','"+gender+"','"+add1+"','"+add2+"','"+nation+"','"+city+"','"+password+"')";
                            st.executeUpdate(sql1);
                            conn.setAutoCommit(true);
                            conn.close();
                            response.sendRedirect("newjsp.jsp");
                        }
                        catch(Exception e){
                            e.printStackTrace();
                        }
                    }
            %>
    </body>
</html>
