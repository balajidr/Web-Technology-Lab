<?php
define('db_host','localhost');
define('db_user' ,'balaji');
define('db_pass', 'spiderman');
define('db_name','copper');
$link = mysql_connect(db_host, db_user, db_pass) or die('unable to connect'.mysql_error());
$db_selected=mysql_select_db(db_name,$link) or die('cant use'.db_name.':'.mysql_error());
$value=$_POST['name'];
$value1=$_POST['registerNumber'];
$value2=$_POST['college'];
$value3=$_POST['gender'];
$value4=$_POST['dob'];
$value5=$_POST['department'];
$value6=$_POST['cgpa'];
$value7=$_POST['age'];
echo"  <center>Registered successfully <br>  YOUR ID is $value </center><br><br>";
$sql="insert into details(`name`,`registerNumber`,`college`,`gender`,`dob`,`department`,`cgpa`,`age`) values ('".$value."','".$value1."','".$value2."','".$value3."','".$value4."','".$value5."','".$value6."','".$value7."')";
if(!mysql_query($sql))
{
	die('error: '.mysql_error());
}
?>
<form name="backhome" action="registration.html" method="POST">
<center><input type="submit" value="Back"></center><br>
</form>