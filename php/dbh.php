<?php

$conn = mysqli_connect("localhost","root","password","sys");
 if(!$conn){
	 die("Connection failed:" .mysqli_connect_error());
 }
 ?>