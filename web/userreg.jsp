<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
   

    <title>Retail Purchase And Tracking System</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/component.css">
    <link rel="stylesheet" href="css/custom-styles.css">
    <link rel="stylesheet" href="css/font-awesome.css">
	
     
	 <link rel="stylesheet" href="css/demo.css">
    <link rel="stylesheet" href="css/font-awesome-ie7.css">

      <script src="js/jquery.mobilemenu.js"></script>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script>
    $(document).ready(function(){
        $('.menu').mobileMenu();
    });
  </script>
 
  </head>
<script>  
function validateform(){  
var x=document.myform.email.value;
var phoneno = document.getElementById('txtphoneno'); 
  
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
  <body>
    <div class="header-wrapper">
      <div class="site-name">
        <h1>Retail Purchase And Tracking System</h1>
        
      </div>
    </div>
    <div class="menu">
      <div class="navbar">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <i class="fw-icon-th-list"></i>
            </button>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
             <li><a href="index.jsp">Home</a></li>
              <li><a href="admin.jsp">Admin</a></li>
              <li><a href="user.jsp">Customer</a></li>
              <li><a href="provider1.jsp">Provider 1</a></li>
              <li><a href="provider2.jsp">Provider 2</a></li>
               <li><a href="provider3.jsp">Provider 3</a></li>
            </ul>
          </div><!--/.navbar-collapse -->
        </div>
      </div>
      
    <form name="myform" action="regact.jsp" method="post" onsubmit="return validateform()" >
    <center>
<table align="center">
    
    <br>
    <center><p><font size="6" color="balck">&nbsp;&nbsp;&nbsp;&nbsp; Customer Registration</font></p></center>
   
        <tr>
              <td>
                   <tr>
            
                  <tr>
              <td>
                  
               <td><strong><font size="3" color="black">User Name:</font></strong></td>
        
                <td><input type="text" name="username" id="username1" placeholder=UserName required style="height:30px; width:200px"> </input></td>
            
              </td>
        </tr>
        
       <tr>
              <td>
                <td><strong><font size="3" color="black">Password </font></strong></td>
               <td><input type="password" name="password" id="password1" placeholder= Password required style="height:30px; width:200px"></input></td> 
              </td>
        </tr>
           <tr>
              <td>
                <td><strong><font size="3" color="black">Email: </font></strong></td>
               <td><input type="text" name="email" id="email" placeholder= Email style="height:30px; width:200px"></input></td> 
              </td>
        </tr> 
            
            <tr>
                
                <tr>
              <td>
                  
               <td><strong><font size="3" color="black">DOB:</font></strong></td>
        
                <td><input type="date" name="dob" id="dob1"  style="height:30px; width:200px"> </input></td>
            
              </td>
        </tr>
        
       <tr>
              <td>
                <td><strong><font size="3" color="black">Address </font></strong></td>
               <td><input type="text" name="address" id="address1" placeholder= Address required style="height:30px; width:200px"></input></td> 
              </td>
        </tr>
           <tr>
              <td>
                <td><strong><font size="3" color="black">Mobile No: </font></strong></td>
               <td><input type="text" name="cno" id="txtphoneno" onkeypress="return isNumber(event)" placeholder= MobileNo style="height:30px; width:200px"></input></td> 
              </td>
        </tr> 
            
            <tr>
              
              <td>
                              <br><br><br>    
                                   
                  <td><input type="submit" value="Register" style="height:30px; width:70px" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <input type="reset" value="Reset" style="height:30px; width:50px" /></td>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </td>
          </tr>
            </table>
</body>
</html>