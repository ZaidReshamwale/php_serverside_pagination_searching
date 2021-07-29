<?php

function Connect()
{
	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$dbname = "task";

	//Create Connection
	$conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname) or die($conn->connect_error);

	return $conn;
session_start();
}
?>