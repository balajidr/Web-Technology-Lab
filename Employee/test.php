<?php
   $mysqli = new mysqli("localhost", "root", "", "employee");
?>
<!DOCTYPE HTML>  
<html>
<head>
<style>
.error {color: #FF0000;}
</style>
</head>
<body style="text-align:center; margin:200px; background-color:#cecbcb; font-family:sans-serif">  

<?php
// define variables and set to empty values
$nameErr = $emailErr = $genderErr = "";
$name = $dept = $age = $salary = $designation = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["name"])) {
    $nameErr = "Name is required";
  } else {
    $name = test_input($_POST["name"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
      $nameErr = "Only letters and white space allowed"; 
    }
  }
  
  if (empty($_POST["department"])) {
    $emailErr = "Department is required";
  } else {
    $dept = test_input($_POST["department"]);
  }
    
  if (empty($_POST["designation"])) {
    $designation = "";
  } else {
    $designation = test_input($_POST["designation"]);
    }
 

  if (empty($_POST["salary"])) {
    $salary = "";
  } else {
    $salary = test_input($_POST["salary"]);
  }

  if (empty($_POST["age"])) {
    $genderErr = "Age is required";
  } else {
    $age = test_input($_POST["age"]);
  }
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>

<h2 style="text-align:center;">Employee Details</h2>
<form method="post" action="test.php">  
  Name: <input type="text" name="name" >
  <span class="error">* <?php echo $nameErr;?></span>
  <br><br>
  Department: <input type="text" name="dept" >
  <span class="error">* <?php echo $emailErr;?></span>
  <br><br>
  Designation: <input type="text" name="designation" >
  <br><br>
  Salary: <input type="number" name="salary">
  <br><br>
  Age:
  <input type="number" name="salary">
  <br><br>
  <input type="submit" name="submit" value="Submit">  
  <a href="login.php">Logout</a>
</form>

<?php
if (isset($_POST["submit"])){
$sql = "insert INTO emp(name,dept,designation,salary,age)
VALUES ( '$name','$dept','$designation','$salary','$age')";
//"update emp set name='$name',dept='$dept',designation='$designation',salary='$salary',age='$age' where id='$_SESSION';"
if ($mysqli->query($sql) === TRUE) {
    echo "New record created successfully";
}
}
?>

</body>
</html>