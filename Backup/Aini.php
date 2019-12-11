<?php

$number=$_POST['num'];

$number=mysqli_real_escape_string($_POST['num']);

$sql='select * from sample.employee_details where MOBILE_NO='.$number;

if($sql!=''){
	echo "Mobile Number Exist";
}


?>