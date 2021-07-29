

<?php
 function startsession($key,$data)
{
	session_start();
	$_SESSION[$key]=$data;
	$response['Success']='true';
	$response['Message']=" session started";
	return $response; 
}
session_start();
require 'conn.php';
// redirecting user after login


$conn = Connect();

$aemail = $conn->real_escape_string($_POST['aemail']);

$apassword = $conn->real_escape_string($_POST['apassword']);


$sql= "SELECT * FROM `admin` WHERE aemail = '$aemail' && apassword = '$apassword'";
$result = mysqli_query ($conn, $sql);
if(mysqli_num_rows($result)==1)
   			{
   				 $data=mysqli_fetch_assoc($result);
   		             startsession("Admin",$data);
   				
      			echo '<script>alert("login Successfully");
	window.location.href ="main.php";</script>';
    		} else {
	echo '<script>alert("Wrong access");
	window.location.href ="index.php";</script>';
    		


}
$conn->close();



?>


