<?php
include('dbconnection.php');
 session_start();
 
  $email = $_SESSION['email'];
 //echo ($email);
 if(isset($_GET['email'])){
     $f_email = $_GET['email'];
     //echo($f_email);
 
     $get_pro = "SELECT * FROM targets WHERE email ='$f_email'";
     $run_pro = mysqli_query($con, $get_pro);

 }

?>

<html>
    <head>
        <style>
            .column {
  float: left;
  width: 33.33%;
}

/* Clear floats after the columns */
.row:after  {
  content: "";
  display: table;
  clear: both;
}
.row a {
  text-decoration: none;
  color: black;
}
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
  }
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width:50%;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
  padding: 2px 16px;
}
.left{
    top : 70px;
    float: right;
    padding: 2px 16px;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 30%;
}
.container1{
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 50%;
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
    padding: 3px 16px;
    float: right; 
    /* margin-right: 100%; */
    /* /* margin: 0 auto; */
} 
        </style>
    </head>
    <body>
     
    <center>
  <div class="row">
  <a href="one.php?email=<?php echo  $f_email;?>"><h3>1.Journal Paper Planned</h3></a>
  </div>
  <div class="row">
  <a href="two1.php?email=<?php echo  $f_email;?>"><h3>2.Journal Paper Accepted</h3></a>

  </div>
  <div class="row">
  <a href="three1.php?email=<?php echo  $f_email;?>"><h3>3.Journal Paper Published</h3></a>
  </div>
</div>



  <div class="row">
  <a href="four1.php?email=<?php echo  $f_email;?>"><h3>4.Paper Presented</h3></a>
  </div>
  <div class="row">
  <a href="five1.php?email=<?php echo  $f_email;?>"><h3>5.Workshops Organized</h3></a>

  </div>
  <div class="row">
  <a href="six1.php?email=<?php echo  $f_email;?>"><h3>6.Conference Organized</h3></a>
  </div>
</div>



<div class="row">
  
<a href="seven1.php?email=<?php echo  $f_email;?>"><h3>7.Guest Lectures Delivered</h3></a>
  </div>
  <div class="row">
  <a href="eight1.php?email=<?php echo  $f_email;?>"><h3>8.Patents</h3></a>

  </div>
  <div class="row">
  <a href="nine1.php?email=<?php echo  $f_email;?>"><h3>9.Book Chapters</h3></a>
  </div>
</div>



<div class="row">
  
<a href="ten1.php?email=<?php echo  $f_email;?>"><h3>10.Awards/Honours Received</h3>
  </div>
  <div class="row">
  <a href="ele1.php?email=<?php echo  $f_email;?>"><h3>11.Proposal Planned and Submitted</h3>


  </div>
  <div class="row">
  <a href="twe1.php?email=<?php echo  $f_email;?>"><h3>12.Webinars Attended</h3>

 
</div>

<div class="row">
  
<a href="thir1.php?email=<?php echo  $f_email;?>"><h3>13.certifications completed(</h3>
  
  </div>
  </center>
    </body>
</html>
