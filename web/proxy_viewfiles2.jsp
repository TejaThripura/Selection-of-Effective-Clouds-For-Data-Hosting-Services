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
    String data = request.getParameter("data");
    String cloud = request.getParameter("cloud"); 
  
    
    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
    Calendar cal = Calendar.getInstance();
    System.out.println(dateFormat.format(cal.getTime()));
    
    KeyGenerator keyGen = KeyGenerator.getInstance("AES");
    keyGen.init(128);
    SecretKey secretKey = keyGen.generateKey();
    System.out.println("secret key:" + secretKey);
    //converting secretkey to String
     byte[] be = secretKey.getEncoded();//encoding secretkey
     String skey = Base64.encode(be);
     System.out.println("converted secretkey to string:" + skey);
     String cipherdata = new encryption().encrypt(data, secretKey);
     System.out.println(cipherdata);
     String aa=cipherdata;
   
    int aid=0;
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
        
    
    
    
    if(cloud.equals("A")){
      
    PreparedStatement ps=con.prepareStatement("insert into clouda values(?,?,?,?,?,?,?,?)");

    ps.setInt(1,aid);
    ps.setString(2,filename);
    ps.setString(3,ownername);
    ps.setString(4,ownerdate);
    ps.setString(5,aa);
    ps.setString(6,skey);
    ps.setString(7,cloud);
    ps.setString(8, dateFormat.format(cal.getTime()));
    int i=ps.executeUpdate();
    if(i>0)
    {
      
    int k=50;   
    int finalcost1=k+cost;      
        
    PreparedStatement psa=con.prepareStatement("update upload set proxystatus='Uploaded' where filename='"+filename+"'");
    psa.executeUpdate();
    
    PreparedStatement psaa=con.prepareStatement("update owner set cost="+finalcost1+" where email= '"+ownername+"'");
    psaa.executeUpdate();
    
    
     File f = new File("C:\\Users\\Nikith1000Projects\\Desktop\\input\\"+filename);
     FileWriter fw = new FileWriter(f);
     fw.write(aa);
     fw.close();
     Ftpcon ftpcon = new Ftpcon();
     ftpcon.upload(f, filename,cloud);
    
     
     
     
     
    response.sendRedirect("proxy_viewfiles.jsp?msg=Registered");
    }  
      }  
    
      if(cloud.equals("B")){
      
   PreparedStatement pst=con.prepareStatement("insert into cloudb values(?,?,?,?,?,?,?,?)");

    pst.setInt(1,bid);
    pst.setString(2,filename);
    pst.setString(3,ownername);
    pst.setString(4,ownerdate);
    pst.setString(5,aa);
    pst.setString(6,skey);
    pst.setString(7,cloud);
    pst.setString(8, dateFormat.format(cal.getTime()));
    
    int i=pst.executeUpdate();
    if(i>0)
    {
        
     int k=60;   
    int finalcost=k+cost;   
        
        
    PreparedStatement psb=con.prepareStatement("update upload set proxystatus='Uploaded' where filename='"+filename+"'");
    psb.executeUpdate();
    
    PreparedStatement psbb=con.prepareStatement("update owner set cost="+finalcost+" where email= '"+ownername+"'");
    psbb.executeUpdate();
    
       
     File f = new File("C:\\Users\\Nikith1000Projects\\Desktop\\input\\"+filename);
     FileWriter fw = new FileWriter(f);
     fw.write(aa);
     fw.close();
     Ftpcon ftpcon = new Ftpcon();
     ftpcon.upload(f, filename,cloud);
    
    
    response.sendRedirect("proxy_viewfiles.jsp?msg=Registered");
    }  
      }
    
    
    
    else{
    response.sendRedirect("owner.jsp?m1=Failed");    
    }
  
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>