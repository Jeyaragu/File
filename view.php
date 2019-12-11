<?php

$number=$_POST['num'];
$servername = "localhost";
$username = "root";
$password = "";
//error_reporting(0);

// Create connection
$raghu =mysqli_connect($servername, $username, $password);

// Check connection
if ($raghu->connect_error) {
    die("Connection failed: " . $raghu->connect_error);
} 

$number=mysqli_real_escape_string($raghu,$_POST['num']);
$query="select * from sample.employee_details where MOBILE_NO=".$number;//.$number;
$result = mysqli_query( $raghu, $query );

//$statement = $mysqli->query($query);
//$result=$raghu->prepare($statement);
//var_dump($statement->rowCount());
//$result->execute();
if (mysqli_num_rows($result)==0){
	echo "Mobile Number Not Exists";
}else{
	echo "Given Mobile Number is Valid Mobile Number";
}



// $result = mysql_query($query);
//     if ($result) {
//         while($row = mysqli_fetch_row($result)) {
//                 //$name = $row["$yourfield"];
//                 echo "Hello:";
//             }
//     }
//     else {
//         echo "User dosen't exit!";
//     }
//     $mysqli -> close();




?>