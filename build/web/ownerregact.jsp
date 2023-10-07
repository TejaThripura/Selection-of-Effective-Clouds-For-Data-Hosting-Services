<%@page import="java.sql.*"%>
<%@page import="charm.Dbconnection"%>
<%@ page session="true" %>
    <%
    String username = request.getParameter("username");
    String password = request.getParameter("password"); 
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender"); 
    String address = request.getParameter("address");
    String mobile = request.getParameter("mobile");
    int cost=0;
    try{
        
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("insert into owner values(?,?,?,?,?,?,?,?)");

    ps.setString(1,username);
    ps.setString(2,password);
    ps.setString(3,email);
    ps.setString(4,dob);
    ps.setString(5,gender);
    ps.setString(6,address);
    ps.setString(7,mobile);
    ps.setInt(8,cost);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("owner.jsp?msg=Registered");
    }
    else{
    response.sendRedirect("owner.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>