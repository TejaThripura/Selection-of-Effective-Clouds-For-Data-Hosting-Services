<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="charm.Ftpcon"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@page import="charm.encryption"%>
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%@page import="java.sql.*"%>
<%@page import="charm.Dbconnection"%>
<%@ page session="true" %>
    <%
    String filename = request.getParameter("filename");
    String ownername = request.getParameter("ownername"); 
    String ownerdate = request.getParameter("ownerdate");
    String proxydate = request.getParameter("proxydate");
    String part1 = request.getParameter("part1");
    String part2 = request.getParameter("part2");
    String skey = request.getParameter("skey"); 
  
    String data=part1+part2;
    
    String cloud="A";
    
    int bid=0;
    
    
    try{
        
    Connection con=Dbconnection.getConnection();
    
    
      
   PreparedStatement pst=con.prepareStatement("insert into clouda values(?,?,?,?,?,?,?,?)");

    pst.setInt(1,bid);
    pst.setString(2,filename);
    pst.setString(3,ownername);
    pst.setString(4,ownerdate);
    pst.setString(5,data);
    pst.setString(6,skey);
    pst.setString(7,"A");
    pst.setString(8,proxydate);
    
    int i=pst.executeUpdate();
    if(i>0)
    {
    PreparedStatement psb=con.prepareStatement("update predictorcloudb set status='Uploaded' where filename='"+filename+"'");
    psb.executeUpdate();    
       
     File f = new File("C:\\Users\\Nikith1000Projects\\Desktop\\input\\"+filename);
     FileWriter fw = new FileWriter(f);
     fw.write(data);
     fw.close();
     Ftpcon ftpcon = new Ftpcon();
     ftpcon.upload(f, filename,cloud);
    
    
    response.sendRedirect("predictor_cloudbbackup.jsp?msg=Registered");
    }  
      
   
    else{
    response.sendRedirect("predictor_cloudbbackup.jsp?m1=Failed");    
    }
  
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>