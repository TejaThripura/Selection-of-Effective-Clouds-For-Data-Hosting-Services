<%@page import="java.sql.*"%>
<%@page import="charm.Dbconnection"%>
<%@ page session="true" %>
    <%
    String filename = request.getParameter("filename");
    String ownername = request.getParameter("ownername"); 
    String dataa = request.getParameter("data");
    String data=dataa;
    
   // int datasizefull=data.length();
    //int datasize=data.length()/2;
    
   // String fhalf=data.substring(0,datasize);
    //String secondhalf=data.substring(datasizefull,1);
    
   // System.out.println("fhalf-----"+fhalf+"---secondhalf-------"+secondhalf);
    
     int l=data.length();
  int len=data.length()/2;
String halfStringa=data.substring(0,len);
String halfString=halfStringa;

String seconda = data.substring(len,l);
String second=seconda;

System.out.println("halfString-----"+halfString+"---second-------"+second);


    Connection con=Dbconnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from clouda where filename= '"+filename+"'");
    int bid=0;
    String skey=null;
    String ownerdate=null;
    String proxydate=null;
    if(rs.next()){
       
     skey=rs.getString("skey");
     ownerdate=rs.getString("ownerdate");
     proxydate=rs.getString("proxydate");
   }
   
    PreparedStatement ps=con.prepareStatement("insert into predictorclouda values(?,?,?,?,?,?,?,?,?,?)");

    ps.setInt(1,bid);
    ps.setString(2,filename);
    ps.setString(3,ownername);
    ps.setString(4,ownerdate);
    ps.setString(5,halfString);
    ps.setString(6,second);
    ps.setString(7,skey);
    ps.setString(8,"A");
    ps.setString(9,proxydate);
    ps.setString(10,"Pending");
    int i=ps.executeUpdate();
    if(i>0)
    {
        
    PreparedStatement pst=con.prepareStatement("delete from clouda where filename='"+filename+"'");
    pst.executeUpdate();
    
    PreparedStatement pstt=con.prepareStatement("delete from clouda_notification  where filename='"+filename+"'");
    pstt.executeUpdate();
    
    
    
    response.sendRedirect("proxy_cloudanot.jsp?msg=success");
    }
    else{
    response.sendRedirect("proxy_cloudanot.jsp?m1=Failed");    
    }
    %>
    <%
    

    
    %>