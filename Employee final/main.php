<?php
   $mysqli = new mysqli("localhost", "root", "", "employee");
?>


<html>

<head>
<style>
select {
	background-color:#b3b2b2;
	float:right;
}
form{
	font-size:20px;
}
input[type='submit']{
	background-position: center;
	background-color: #aba8a8;
    float: right;
</style>
</head>

<body bgcolor="lightblue" style=" margin:105px;  text-align:center">
<h1 style="text-align:center;">Employee Details</h1>
<center>
<?php
			$arr = array();
			$query = mysqli_query($mysqli, "select name,designation,age,salary,dept from emp;");
			echo("<form method='post' action='' >");
			echo("<table border=5>");
				echo("<tr>");
				echo("<th>Name</th>");
				echo("<th>Age</th>");
				echo("<th>Designation</th>");
				echo("<th>Salary</th>");
				echo("<th>Department</th>");
				echo("</tr>");
			while($re = mysqli_fetch_assoc($query)){
				$temp = $re['name'];
				$temp1 = $re['designation'];
				$temp2 = $re['age'];
				$temp3 = $re['dept'];
				$temp4 = $re['salary'];
				array_push($arr, $temp);
				array_push($arr, $temp1);
				array_push($arr, $temp2);
				array_push($arr, $temp3);
				array_push($arr, $temp4);
				echo("<tr>");
				echo("<td>");
				echo $temp;
				echo("</td>");
				echo("<td>");
				echo $temp2;
				echo("</td>");
				echo("<td>");
				echo $temp1;
				echo("</td>");
				echo("<td>");
				echo $temp4;
				echo("</td>");
				echo("<td>");
				echo $temp3;
				echo ("</tr>");
			}
?>
</center>

Salary above:<input type="text" name="sal">
<input type="submit" name="submit" value="Submit">
<br>
<br>

Designation:<input type="text" name="age">
<input type="submit" name="submit1" value="Submit">

<br>
<br>
Age:<input type="text" name="ae">
<input type="submit" name="submit2" value="Submit">
<br>
<br>
<a href="login.php">Logout</a>

 
<?php

$sal=0;
if(isset($_POST["submit"])){
	if(isset($_POST["sal"])){
		$sal=$_POST["sal"];
	}
$sql = "SELECT * FROM EMP WHERE salary>'$sal';";
$query=mysqli_query($mysqli,$sql);
echo(" <br> QUERIES <br>");
echo("<table  border=2>
  <tr>
    <th>NAME</th>
    <th>DEPT</th>
	<th>SALARY</th>
    <th>DESIGNATION</th>
  </tr>
");
while($re = mysqli_fetch_array($query)){
	
	
	echo("<tr>");
	echo("<td>");
	print_r($re['NAME']);
	echo("</td>");
	echo("<td>");
	print_r($re['DEPT']);
	echo("</td>");
	echo("<td>");
	print_r($re['SALARY']);
	echo("</td>");
	echo("<td>");
	print_r($re['DESIGNATION']);
	echo("</td>");
	echo("</tr>");
	
}
echo("</table>");
}
$age=0;
if(isset($_POST["submit1"])){
	if(isset($_POST["age"])){
		$age=$_POST["age"];
	}
$sql = "SELECT * FROM emp WHERE designation='$age';";
$query=mysqli_query($mysqli,$sql);
while($re = mysqli_fetch_array($query)){
	echo("<table  border=2>
  <tr>
    <th>NAME</th>
    <th>DEPT</th>
	<th>SALARY</th>
    <th>DESIGNATION</th>
  </tr>
");
	
	echo("<tr>");
	echo("<td>");
	print_r($re['NAME']);
	echo("<td>");
	print_r($re['DEPT']);
	echo("<td>");
	print_r($re['SALARY']);
	echo("<td>");
	print_r($re['DESIGNATION']);
	echo("</tr>");
	echo("</table>");
}
}


$ae=0;
if(isset($_POST["submit2"])){
	if(isset($_POST["ae"])){
		$ae=$_POST["ae"];
	}
$sql = "SELECT * FROM emp WHERE age='$ae';";
$query=mysqli_query($mysqli,$sql);
while($re = mysqli_fetch_array($query)){
	echo("<table border=2>
  <tr>
    <th>NAME</th>
    <th>DEPT</th>
	<th>SALARY</th>
    <th>DESIGNATION</th>
  </tr>
");
	
	echo("<tr>");
	echo("<td>");
	print_r($re['NAME']);
	echo("<td>");
	print_r($re['DEPT']);
	echo("<td>");
	print_r($re['SALARY']);
	echo("<td>");
	print_r($re['DESIGNATION']);
	echo("</tr>");
	echo("</table>");
}
}
?>
<script>
function funct(){
var sub1 = document.getElementById("UNIX"); 
var sub2 = document.getElementById("PARALLEL");
var sub3 = document.getElementById("HUMAN RIGHTS");
var sub4 = document.getElementById("M LEARNING");
var sub5 = document.getElementById("WEB DESIGN");
var sub6 = document.getElementById("COMPILER");
var staff1 = sub1.options[sub1.selectedIndex].text;
var staff2 = sub2.options[sub2.selectedIndex].text;
var staff3 = sub3.options[sub3.selectedIndex].text;
var staff4 = sub4.options[sub4.selectedIndex].text;
var staff5 = sub5.options[sub5.selectedIndex].text;
var staff6 = sub6.options[sub6.selectedIndex].text;
alert("The staff selected are:\nUNIX - "+staff1+"\nPARALLEL - "+staff2+"\nHUMAN RIGHTS - "+staff3+"\nM LEARNING -"+ staff4+"\nWEB DESIGN - "+staff5+"\nCOMPILER - "+staff6);

}
</script>
</body>
</html>
