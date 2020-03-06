<%-- 
    Document   : login
    Created on : 11-Jan-2020, 01:39:40
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
        <title>login</title>
    </head>
    <body>       
                <%!l
                    String mail, password ;
                %>
                <%
                    mail = password = "";
                    mail = request.getParameter("mail");
                    password = request.getParameter("password");
                    if(mail.equals("") || password.equals("")){
                        out.write("Empty fields, make sure you input data into all field before pushing the "+"Submit button");
                    }
                    else
                    {
                        
                        try{
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/"+"bus Project","root","");
                            Statement st = (Statement) conn.createStatement();
                            String sql1 = "INSERT INTO login VALUES('"+mail+"','"+password+"')";
                            st.executeUpdate(sql1);
                            conn.setAutoCommit(true);
                            conn.close();
                            response.sendRedirect("price.jsp");
                        }
                        catch(Exception e){
                            e.printStackTrace();
                        }
                    }
                    %>
<%--        <%!
            String usernameStored;
            String passwordStored;
        Connection con;
        PreparedStatement st;
        ResultSet res;
        String av;
        %>
        <%
        av = "";
        String av = request.getParameter("adminverify");
        if( av != null)
        {
        try
        {
            usernameStored="";
            passwordStored="";
            String usernameEntered = request.getParameter("mail").trim();
            String passwordEntered = request.getParameter("password").trim();
            String sql = "SELECT * FROM signing WHERE (mail='"+usernameEntered+"'"+ "AND password='"+passwordEntered+"')";
            boolean verify =false;
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/"+ "Bus Project","root","");
            st =(PreparedStatement) con.prepareStatement(sql);
            res = st.executeQuery();
            boolean recordsExists = res.absolute(1);
            if(recordsExists==true)
            {verify = true;}
            if(verify==true)
            {
                session.setAttribute("mail",usernameEntered);
                session.setAttribute("password",passwordEntered);
                response.sendRedirect("price.jsp");
            }
            else
            {
                session.invalidate();
                request.setAttribute("error", "*Invalid username or password*");
                RequestDispatcher rd= request.getRequestDispatcher("newjsp.jsp");
                rd.forward(request, response);
            }
            con.close();
        }
        catch (SQLException ex)
            {
            out.write("An error occurred!!!"+ex.toString());
            }
        }
        %>
--%>
    </body>
</html>
