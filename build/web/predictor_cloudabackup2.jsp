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
    
    String cloud="B";
    
    int bid=0;
    
    
     int cost=0;
     
     Connection con=Dbconnection.getConnection();
    Statement stt = con.createStatement();
    ResultSet rs = stt.executeQuery("select * from owner where email= '"+ownername+"'");
    if(rs.next())
    {
        
    cost=rs.getInt(8); 
        
    }
    
    
    
    try{
 
    
      
   PreparedStatement pst=con.prepareStatement("insert into cloudb values(?,?,?,?,?,?,?,?)");

    pst.setInt(1,bid);
    pst.setString(2,filename);
    pst.setString(3,ownername);
    pst.setString(4,ownerdate);
    pst.setString(5,data);
    pst.setString(6,skey);
    pst.setString(7,"B");
    pst.setString(8,proxydate);
    
    int i=pst.executeUpdate();
    if(i>0)
    {
    PreparedStatement psb=con.prepareStatement("update predictorclouda set status='Uploaded' where filename='"+filename+"'");
    psb.executeUpdate();    
      
    
    
     int k=60;   
    int finalcost1=k+cost;      
   
    
    PreparedStatement psaa=con.prepareStatement("update owner set cost="+finalcost1+" where email= '"+ownername+"'");
    psaa.executeUpdate();
    
    
    
    
    
    
     File f = new File("C:\\Users\\Nikith1000Projects\\Desktop\\input\\"+filename);
     FileWriter fw = new FileWriter(f);
     fw.write(data);
     fw.close();
     Ftpcon ftpcon = new Ftpcon();
     ftpcon.upload(f, filename,cloud);
    
    
    response.sendRedirect("predictor_cloudabackup.jsp?msg=Registered");
    }  
      
   
    else{
    response.sendRedirect("predictor_cloudabackup.jsp?m1=Failed");    
    }
  
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>