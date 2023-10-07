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
    <li><a href="predictorhome.jsp">Home</a></li>
    <li><a href="predictor_clouda.jsp">Cloud A Files</a></li>
    <li><a href="predictor_cloudb.jsp">Cloud B Files</a></li>
    <li><a href="predictor_cloudabackup.jsp">Cloud A Back Up Files</a></li>
    <li><a href="predictor_cloudbbackup.jsp" class="selected">Cloud B Back Up Files</a></li>
    <li><a href="clouda.jsp">Logout</a></li>
    
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
     
   
    <p><center><font size="5" color="white">Cloud B Back Up File Upload to Cloud A</font></center></p><br/>
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

String ownername = request.getParameter("ownername");
String filename = request.getParameter("filename");
String part1 = request.getParameter("part1");
String part2 = request.getParameter("part2");
String skey = request.getParameter("skey");
String ownerdate = request.getParameter("ownerdate");
String proxydate = request.getParameter("proxydate");

	
        %>
        
  
   <center>
	
           <form name="f" action="predictor_cloudbbackup2.jsp" method="post" >  <center>
<table>
   
        <tr>
            <th><font color="white" size="4">File Name :</th>
              <th><input type="text" name="filename" value="<%=filename%>"  style="height:30px; width:170px"></input>
              </th>
        </tr>

              
              
        <tr>
              <th><font color="white" size="4">Owner Name: </th>
              <th><input type="text" name="ownername" value="<%=ownername%>"  style="height:30px; width:170px"></input>
              </th>
        </tr>
              
          <tr>
              <th><font color="white" size="4">Owner Uploaded Date: </th>
              <th><input type="text" name="ownerdate" value="<%=ownerdate%>"  style="height:30px; width:170px"></input>
              </th>
        </tr>
              
            <tr>
              <th><font color="white" size="4">Proxy Uploaded Date: </th>
              <th><input type="text" name="proxydate" value="<%=proxydate%>"  style="height:30px; width:170px"></input>
              </th>
          </tr>   
    
       <tr>
              <th><font color="white" size="4">Part1 Data :</th>
              <th><textarea type="text" name="part1"  style="height:30px; width:170px"><%=part1%></textarea>
              </th>
        </tr>
    
              
              
       <tr>
              <th><font color="white" size="4">Part2 Data :</th>
              <th><textarea type="text" name="part2"  style="height:30px; width:170px"><%=part2%></textarea>
              </th>
        </tr>
              
         <tr>
              <th><font color="white" size="4">Secret Key :</th>
              <th><textarea type="text" name="skey"  style="height:30px; width:170px"><%=skey%></textarea>
              </th>
        </tr>    
    
         
	</table>
                    </center>
     
          <br> <br><br>   
              
	  <tr>
              <td>
                    <input type="submit" value="submit"  style="height:30px; width:65px" />
             
              </td>
            </tr>
 
       </form>
  
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