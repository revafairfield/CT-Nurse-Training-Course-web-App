<?php

$dbconn = mysqli_connect("localhost","root","password","NursesTrainingApp");
 if(!$dbconn){
	 die("Connection failed:" .mysqli_connect_error());
 }
 ?>