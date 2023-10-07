<%@page import="java.sql.*"%>
<%@page import="charm.Dbconnection"%>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    try{
       
    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from owner where username= '"+username+"' and password='"+password+"'");
    if(rs.next())
    {

    String user = rs.getString("username");
    session.setAttribute("user",user);
    String email = rs.getString("email");
    session.setAttribute("email",email);
                   
    response.sendRedirect("ownerhome.jsp?msg=Login_Successfull");
    }
    else 
    {
    response.sendRedirect("owner.jsp?m1=LoginFail");
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in emplogact"+e.getMessage());
    }
%>