<?php

$conn = mysqli_connect("localhost","root","password","NursesTrainingApp");
 if(!$conn){
	 die("Connection failed:" .mysqli_connect_error());
 }
 ?>