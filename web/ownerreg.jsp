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
    
<script>  
function validateform(){  
var password=document.myform.password.value;            
var x=document.myform.email.value;
var phoneno = document.getElementById('txtphoneno'); 

 if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  } 
  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
  return false;  
} 
if (phoneno.value == "" || phoneno.value == null) {
            alert("Please enter your Mobile No.");
            return false;
        }
        if (phoneno.value.length < 10 || phoneno.value.length > 10) {
            alert("Mobile No. is not valid, Please Enter 10 Digit Mobile No.");
            return false;
        }
}  
</script>

    <div id="templatemo_wrapper">
    <div id="templatmeo_header">
    <div id="site_title">
    <p><font color="white" size="5">Selection Of Effective Clouds For Data Hosting Services </font></p></div>


    <div class="cleaner"></div>
    </div> 

    <div id="templatemo_menu" class="ddsmoothmenu">
    <ul>
    <li><a href="index.html">Home</a></li>
    <li><a href="owner.jsp" class="selected">Owner</a></li>
    <li><a href="proxy.jsp">Proxy</a></li>
    <li><a href="predictor.jsp">Predictor</a></li>
    <li><a href="clouda.jsp">Cloud A</a></li>
    <li><a href="cloudb.jsp">Cloud B</a></li>
    </ul>
    <br style="clear: left" />
    </div> 

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
    	
    <p align="justify">
    <center><p><font color="white" size="5"> Owner Registration </font></p></center><br/>
    
    <form name="myform" action="ownerregact.jsp" method="post" onsubmit="return validateform()">
    <table align="center" width="321">
    <tr>
    <td width="191" height="43"><font color="white">User Name </td>
    <td width="218"><input name="username" required="" placeholder="User Name" /></td>
    </tr>
    <tr>
    <td height="43"><font color="white">Password </td>
    <td width="218"><input type="password" name="password" required="" placeholder="Password" /></td>
    </tr>
    <tr>
    <td height="43"><font color="white"> Email ID</td>
    <td><input name="email" required="" placeholder="Email ID"/></td>
    </tr>

    <tr>
    <td height="43"><font color="white">Date Of Birth</td>
    <td><input type="date" name="dob" style="text-align:right" required="" ></td>
    </tr>
    <tr>
    <td height="43"><font color="white">Select Gender</td>
    <td><select name="gender" style="width:170px;" required="">
    <option>--Select--</option>
    <option>MALE</option>
    <option>FEMALE</option>
    </select></td>
    </tr>
    <tr>
    <td height="65"><font color="white">Address</td>
    <td><textarea name="address" rows="3" cols="20" required=""></textarea></td>
    </tr> 
    <tr>
    <td height="43"><font color="white">Mobile Number </td>
    <td><input name="mobile" id="txtphoneno" required="" placeholder="Mobile Number"/></td>
    </tr>  

    <tr>
    <td height="43" rowspan="3">
    <p>&nbsp;</p></td>
    <td align="left" valign="middle"> <p>&nbsp;
    </p>
    <p>
    <input name="submit" type="submit" value="REGISTER" />
    </p>
    <div align="right">
    </div></td>
    </tr>
    </table>
    </form>
    </p>      
        
    <div class="cleaner"></div>
    
    </div> 
    </div>

    <div id="templatemo_footer_wrapper">
    <div id="templatemo_footer">
    <center><p></p></center>
    </div> 
    </div> 
    </body>
    </html>