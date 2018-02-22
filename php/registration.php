<?php
   include("dbh.php");
   session_start();
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      $univflag = "Y";
	  $schoolid = 53;
	   
	  if($ctcollege != 53){
	     $schoolid = $ctcollege;
		 $univflag = "N";
		 $universityname ="";
	  }
	 
	  $sql = "INSERT INTO `user` (`email`, `password`, `firstName`, `lastName`, `securityQuestion`, `securityAnswer`, `graduationYear`, `isActive`, `createdBy`, `createdOn`, `updatedBy`, `updatedOn`, `universityFlag`, `otherUniversity`, `schoolID`) 
	          values ('$email', '$password', '$firstname', '$lastname', '$securityquestion', '$securityanswer', '$graduationyear', 'y' ,'$firstname', NOW(), '$firstname', NOW(), '$univflag', '$universityname','$schoolid')";

			  
      header("location: welcome.php");
    $firstname = mysqli_real_escape_string($dbconn,$_POST['firstname']);
      $lastname = mysqli_real_escape_string($dbconn,$_POST['lastname']); 
    $email = mysqli_real_escape_string($dbconn,$_POST['email']);
    $password = mysqli_real_escape_string($dbconn,$_POST['password']);
    $universityname = mysqli_real_escape_string($dbconn,$_POST['universityname']);
    $graduationyear = mysqli_real_escape_string($dbconn,$_POST['graduationyear']);
    $securityquestion = mysqli_real_escape_string($dbconn,$_POST['securityquestion']);
    $securityanswer = mysqli_real_escape_string($dbconn,$_POST['securityanswer']);
    $ctcollege = mysqli_real_escape_string($dbconn,$_POST['ctlist']);
      $result = mysqli_query($dbconn,$sql);
   }else{
      $query_ctschools = "SELECT * FROM `school`";
      $ct_schools = mysqli_query($dbconn,$query_ctschools);
   }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Nursing Test Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular-route.js"></script>

    <link rel="stylesheet" href="/css/normalize.css">
    <link rel="stylesheet" href="/css/custom.css">
<script type="text/javascript">
function CheckCollege(val){
 var element=document.getElementById('college');
 if(val==53)
   element.style.display='block';
 else  
   element.style.display='none';
}

</script> 
	
</head>

<body>

<div class="container-fluid login-container">
  <div class="row-fluid">
      <img class="logo center-block" src="/images/ct-assoc-logo.png"/>
      <h1 class="text-center">Nursing Test Registration</h1>
  </div>

  <div class="row-fluid">
  <div class="gray-bkgd container-padding border border-radius">

<form class="form-horizontal" action = "" method = "post">
  <div class="form-group">
    <div class="col-sm-12">
      <label for="fname" class="control-label">First Name</label>
      <input type="text" class="form-control" name = "firstname" id="fname" placeholder="First Name">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-12">
      <label for="lname" class="control-label">Last Name</label>
      <input type="text" class="form-control" name = "lastname" id="lname" placeholder="Last Name">
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-12">
      <label for="email" class="control-label">Email</label>
      <input type="text" class="form-control" name = "email" id="email" placeholder="Email">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-12">
      <label for="pwd" class="control-label">Password</label>
      <input type="password" class="form-control" name = "password" id="pwd" placeholder="Password">
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-12">
      <label for="college" class="control-label">Select University</label>
	    <select name="ctlist"  class="form-control"  onchange='CheckCollege(this.value);'> 
          <?php while($row1 = mysqli_fetch_array($ct_schools)):;?> 
		  <option value = "<?php echo $row1[0];?>"> <?php echo $row1[1]; ?></option>
		  <?php endwhile;?>
     <!--     <option value= "others">others</option> -->
       </select>  
      <input type="text" class="form-control" name = "universityname" id="college" placeholder="University" style='display:none;'>
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-12">
      <label for="yog" class="control-label">Graduation Year</label>
      <input type="text" class="form-control" name = "graduationyear" id="year" placeholder="Year">
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-12">
      <label for="sq" class="control-label">Securtiy Question</label>
      <input type="text" class="form-control" name = "sq" id="year" placeholder="">
    </div>
  </div>
  
   <div class="form-group">
    <div class="col-sm-12">
      <label for="sa" class="control-label">Security Answer</label>
      <input type="text" class="form-control" name = "securityanswer" id="sa" placeholder="">
    </div>
  </div> 
  

  
  <div class="form-group">
    <div class="col-sm-12">
      <button type="submit" class="btn btn-block btn-primary">Submit</button>
    </div>
  </div>
</form>

  </div>
  </div>
  
  
<div class="row-fluid padding-top">
  <div class="container-padding border border-radius">
    <p>Already Registered?&nbsp;<a href="index.html">Login &rarr;</a></p>
  </div>
</div>
  

</div>


</body>

</html
