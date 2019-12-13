<?php

$fname=$_POST['fname'];
$lname=$_POST['lname'];
$mobile=$_POST['mobile'];
$email=$_POST['email'];
$employeeid=$_POST['emid'];
$pwd=$_POST['pwd'];
//error_reporting(0);

// echo $name."<br>";
// echo $address."<br>";
// echo $Email."<br>";
// echo $number."<br>";
// echo $state."<br>";
$servername = "localhost";
$username = "root";
$password = "";

// Create connection
$raghu =mysqli_connect($servername, $username, $password);

// Check connection
if ($raghu->connect_error) {
    die("Connection failed: " . $raghu->connect_error);
} 
// else{
// 	echo "DB connected successfully";
// }
else{
$fname=mysqli_real_escape_string($raghu,$_REQUEST['fname']);
$lname=mysqli_real_escape_string($raghu,$_REQUEST['lname']);
$mobile=mysqli_real_escape_string($raghu,$_REQUEST['mobile']);
$email=mysqli_real_escape_string($raghu,$_REQUEST['email']);
$employeeid=mysqli_real_escape_string($raghu,$_REQUEST['emid']);
$pwd=mysqli_real_escape_string($raghu,$_REQUEST['pwd']);
$sql= "Insert into sample.employee_details (FNAME,LNAME,EMAIL_ID,E_ID,MOBILE_NO,PASSWORD) values
('$fname','$lname','$email','$mobile','$employeeid','$pwd')";

if(mysqli_query($raghu,$sql))
{
	echo "Record Inserted succesfully";
}
else{
	echo "Error.Could not insert $sql".mysqli_error($raghu);
}
}
?>

