<?php
   $db = new mysqli("localhost", "root", "", "employee");
   session_start();
  $myusername="";
  $mypassword="";
  if(isset($_POST['usernam']))
  	  $myusername = $_POST['usernam'];
 if(isset($_POST['passwor']))   
   $mypassword = $_POST['passwor']; 
      $sql = "SELECT id FROM emp WHERE id = '$myusername' and pass = '$mypassword'";
      $result = $db->query($sql);
	  
      $row = mysqli_fetch_array($result);
      echo("$row[0]");
	 // $active = $row['active'];
      
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
         
         $_SESSION['login_user'] = $myusername;
         echo("success");
		 if($myusername==1000||$myusername==1003)
         header("location: main.php");
		 else
		 header("location: test.php");
		
	  }else {
         $error = "Your Login Name or Password is invalid";
		 
      }
?>

<html>
<head><title>Login</title>


<style>
.capbox {
	
	border-width: 0px 12px 0px 0px;
	display: inline-block;
	*display: inline; zoom: 1; /* FOR IE7-8 */
	padding: 8px 40px 8px 8px;
	}

.capbox-inner {
	font: bold 11px arial, sans-serif;
	color: #000000;
	background-color: #92968d
	margin: 5px auto 0px auto;
	padding: 3px;
	-moz-border-radius: 4px;
}
	
#CaptchaDiv {
	font: bold 17px verdana, arial, sans-serif;
	
	color: #000000;
	background-color: #FFFFFF;
	padding: 4px;
	-moz-border-radius: 4px;
	-webkit-border-radius: 4px;
	border-radius: 4px;
	}

#CaptchaInput { margin: 1px 0px 1px 0px; width: 135px; -moz-border-radius: 4px;
	-webkit-border-radius: 4px;padding: 3px; border-radius: 4px;}

</style>

</head>

<body style="text-align:center; margin:200px; background-color:#cecbcb; font-family:sans-serif">
<h1>LOGIN</h1>
 <form action="" method="POST" onReset="return resetAll();" onsubmit="return checkform(this);" />
USERNAME:
 <input type="text" name="usernam" placeholder="username"; id="usernam" />
<p>PASSWORD:
 <input type="password" name="passwor" placeholder="password"; id="passwor" />
</p>
<div class="capbox">
<div id="CaptchaDiv"></div>
<div class="capbox-inner" >
Enter the above<br>
<input type="hidden" id="txtCaptcha">
<input type="text" name="CaptchaInput" id="CaptchaInput" size="15"><br>

</div>
</div>
<p>

<input type="submit" value="Submit" />
<input type="reset" value="Reset Form"/>
</p>
</form>
<script type="text/javascript">
 function resetAll(){
 if(confirm("Do you want to reset the form to its default "+ " values? ")){
 return true;
}
else{
 return false;
}
}
// Captcha Script

function checkform(theform){
var why = "";

if(theform.CaptchaInput.value == ""){
why += "- Please Enter CAPTCHA Code.\n";
}
if(theform.CaptchaInput.value != ""){
if(ValidCaptcha(theform.CaptchaInput.value) == false){
why += "- The CAPTCHA Code Does Not Match.\n";
}
}
if(why != ""){
alert(why);
return false;
}
}

var a = Math.ceil(Math.random() * 9)+ '';
var b = Math.ceil(Math.random() * 9)+ '';
var c = Math.ceil(Math.random() * 9)+ '';
var d = Math.ceil(Math.random() * 9)+ '';
var e = Math.ceil(Math.random() * 9)+ '';

var code = a + b + c + d + e;
document.getElementById("txtCaptcha").value = code;
document.getElementById("CaptchaDiv").innerHTML = code;

// Validate input against the generated number
function ValidCaptcha(){
var str1 = removeSpaces(document.getElementById('txtCaptcha').value);
var str2 = removeSpaces(document.getElementById('CaptchaInput').value);
if (str1 == str2){
return true;
}else{
return false;
}
}

// Remove the spaces from the entered and generated code
function removeSpaces(string){
return string.split(' ').join('');
}
</script>

</body>
</html>