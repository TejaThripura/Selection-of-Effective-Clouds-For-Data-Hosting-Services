<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="charm.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Selection Of Effective Clouds For Data Hosting Services</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "templatemo_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

<link rel="stylesheet" type="text/css" href="css/style1.css" />
<script language="javascript" type="text/javascript" src="js/jquery.js"></script>
<script language="javascript" type="text/javascript" src="js/jquery.easing.js"></script>
<script language="javascript" type="text/javascript" src="js/script.js"></script>
<script type="text/javascript">
 $(document).ready( function(){	
		var buttons = { previous:$('#lofslidecontent45 .lof-previous') ,
						next:$('#lofslidecontent45 .lof-next') };
						
		$obj = $('#lofslidecontent45').lofJSidernews( { interval : 4000,
direction		: 'opacitys',	
easing			: 'easeInOutExpo',
duration		: 1200,
auto		 	: false,
maxItemDisplay  : 4,
navPosition     : 'horizontal', // horizontal
navigatorHeight : 32,
navigatorWidth  : 80,
mainWidth:940,
buttons			: buttons} );	
	});
</script>
 
</head>
<body>
    
       <%
       if (request.getParameter("msg") != null) {%>
       <script>alert('File Uploaded Successfully...!');</script>
       <%}%>

    <div id="templatemo_wrapper">
    <div id="templatmeo_header">
    <div id="site_title">
    <p><font color="white" size="5">Selection Of Effective Clouds For Data Hosting Services </font></p></div>


    <div class="cleaner"></div>
    </div> <!-- END of header -->

    <div id="templatemo_menu" class="ddsmoothmenu">
  <ul>
    <li><a href="cloudbhome.jsp" class="selected">Home</a></li>
    <li><a href="cloudb_viewfiles.jsp">Upload Files</a></li>
     <li><a href="cloudb_notification.jsp">Send Notification</a></li>
    <li><a href="cloudb.jsp">Logout</a></li>
    
    </ul>
    <br style="clear: left" />
    </div> <!-- END of menu -->

    <div id="templatemo_slider">
    <div id="lofslidecontent45" class="lof-slidecontent" style="width:940px; height:340px;">
    <div class="preload"><div></div></div>
 <!-- MAIN CONTENT --> 
    <div class="lof-main-outer" style="width:940px; height:340px;">
    <ul class="lof-main-wapper">
    <li><img src="images/slider/thumbl_980x340.png" title="Newsflash 1" alt="Slider 01" /></li> 
    <li><img src="images/slider/thumbl_980x340_002.png" title="Newsflash 2" alt="Slider 02" /></li> 
    <li><img src="images/slider/thumbl_980x340_008.png" title="Newsflash 8" alt="Slider 08" /></li> 
    </ul>  	
    </div>
 
    <div class="lof-navigator-wapper">
    <div onclick="return false" class="lof-next">Next</div>
    <div class="lof-navigator-outer">
    <ul class="lof-navigator">
    <li><img src="images/slider/thumbs/thumbl_980x340.png" alt="Image 01" /></li>
    <li><img src="images/slider/thumbs/thumbl_980x340_002.png" alt="Image 01" /></li>       
    <li><img src="images/slider/thumbs/thumbl_980x340_008.png" alt="Image 07" /></li>       		
    </ul>
    </div>
    <div onclick="return false" class="lof-previous">Previous</div>
    </div> 
    
    </div> 
    <script type="text/javascript">
    </script>	
    </div>
    
    <div id="templatemo_main">
     
   
    <p><center><font size="5" color="white">View Owner Files </font></center></p><br/>
    <style>
        th{
            color: green;
        }
         tr{
            color: white;
        }
        
        td{
            text-align: center;
        }
    </style>
     
    
    <% 

try{ 
	Connection con = null;
        con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from cloudb");
        ResultSet rs=pst.executeQuery();
        %>
        
        <center>   <table style="width:80%" border="2"></center>
         
        <tr>
        <th>File Name</th>
        <th>Owner Name</th>       
        <th>Data</th>
        <th>Owner Uploaded Date</th>
        <th>Proxy Uploaded Date</th>
       
     
     
 </tr>

<%
       
	while(rs.next()){
            %><tr>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><textarea style=" width:40"><%=rs.getString(5)%></textarea></td>
                <td><%=rs.getString(4)%></td>
                 <td><%=rs.getString(8)%></td>
        
        </tr>
      <%  }
        
        %> </table>

<% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
         <hr>  
    
    
    
    
    
    
    
    
    
    <div class="cleaner"></div>
    
    </div> <!-- END of main -->
    </div> <!-- END of wrapper -->

    <div id="templatemo_footer_wrapper">
    <div id="templatemo_footer">
    <center><p></p></center>
    </div> <!-- END of footer -->
    </div> <!-- END of footer wrapper -->
    </body>
    </html>