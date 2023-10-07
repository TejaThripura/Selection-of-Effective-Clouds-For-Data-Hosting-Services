<%@page import="java.sql.*"%>
<%@page import="charm.Dbconnection"%>
<%@ page session="true" %>
    <%
    String filename = request.getParameter("filename");
    String ownername = request.getParameter("ownername"); 
    String data = request.getParameter("data");
   
    
    try{
        
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("insert into clouda_notification values(?,?,?,?,?)");

    ps.setString(1,filename);
    ps.setString(2,ownername);
    ps.setString(3,data);
    ps.setString(4,"Kindly Back up Your Data");
    ps.setString(5,"Pending");
    
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("clouda_notification.jsp?msg=Success");
    }
    else{
    response.sendRedirect("clouda_notification.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>