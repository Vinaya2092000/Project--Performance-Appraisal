<?php  
  include("title.html");
 ?>
<?php
include('dbconnection.php');
 session_start();
 $email= $_SESSION['email'];
 $result = mysqli_query($con,"SELECT * FROM user where email='$email'");


?>


<?php



if(isset($_POST['register']))
{
    $t1 = $_POST['1'];
    $t2 = $_POST['2'];
    $t3 = $_POST['3'];
    $t4 = $_POST['4'];
    $t5 = $_POST['5'];
    $t6 = $_POST['6'];
 
    $insert_c = "insert into guest_lectures_delivered(id,email,name_of_faculty,title_of_the_talk_delivered,dates,organiser_det) values('$t1',' $t2','$t3','$t4','$t5','$t6')";

    $run_c=mysqli_query($con,$insert_c);

      echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert(' Succesfully Submitted')
    window.location.href='f_dash.php';
    </SCRIPT>");
        }
        else{
          //echo "Something went wrong!";
        }
   
?>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <!-- Custom CSS -->
    <link href="dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<style>
    .card{
        /* width: 150%;
        display: flex;
  justify-content: center;
  flex-direction: row;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center; */
 
 
  /* width: 150%; */
        margin-left: 80%;      
    /* margin-right: 100%; */
    width: 150%;

    }
    .form-control:hover
    {
        background-color: rgb(85, 105, 207);
        color: white;
        
    }
    .form-group{
        font-size: 15px;
    }
</style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full" data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i
                            class="ti-menu ti-close"></i></a>
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-brand">
                        <!-- Logo icon -->
                        <a href="index.php">
                           
                            <!--End Logo icon -->
                            <!-- Logo text -->
                            <span class="logo-text">
                                <!-- dark Logo text -->
                                <img src="assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                                <!-- Light Logo text -->
                                <img src="assets/images/logo-light-text.png" class="light-logo" alt="homepage" />
                            </span>
                        </a>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Toggle which is visible on mobile only -->
                    <!-- ============================================================== -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)"
                        data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i
                            class="ti-more"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto ml-3 pl-1">
                        <!-- Notification -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle pl-md-3 position-relative" href="javascript:void(0)"
                                id="bell" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                <span><i data-feather="bell" class="svg-icon"></i></span>
                                <span class="badge badge-primary notify-no rounded-circle">5</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-left mailbox animated bounceInDown">
                                <ul class="list-style-none">
                                    <li>
                                        <div class="message-center notifications position-relative">
                                            <!-- Message -->
                                            <a href="javascript:void(0)"
                                                class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <div class="btn btn-danger rounded-circle btn-circle"><i
                                                        data-feather="airplay" class="text-white"></i></div>
                                                <div class="w-75 d-inline-block v-middle pl-2">
                                                    <h6 class="message-title mb-0 mt-1">Luanch Admin</h6>
                                                    <span class="font-12 text-nowrap d-block text-muted">Just see
                                                        the my new
                                                        admin!</span>
                                                    <span class="font-12 text-nowrap d-block text-muted">9:30 AM</span>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)"
                                                class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <span class="btn btn-success text-white rounded-circle btn-circle"><i
                                                        data-feather="calendar" class="text-white"></i></span>
                                                <div class="w-75 d-inline-block v-middle pl-2">
                                                    <h6 class="message-title mb-0 mt-1">Event today</h6>
                                                    <span
                                                        class="font-12 text-nowrap d-block text-muted text-truncate">Just
                                                        a reminder that you have event</span>
                                                    <span class="font-12 text-nowrap d-block text-muted">9:10 AM</span>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)"
                                                class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <span class="btn btn-info rounded-circle btn-circle"><i
                                                        data-feather="settings" class="text-white"></i></span>
                                                <div class="w-75 d-inline-block v-middle pl-2">
                                                    <h6 class="message-title mb-0 mt-1">Settings</h6>
                                                    <span
                                                        class="font-12 text-nowrap d-block text-muted text-truncate">You
                                                        can customize this template
                                                        as you want</span>
                                                    <span class="font-12 text-nowrap d-block text-muted">9:08 AM</span>
                                                </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)"
                                                class="message-item d-flex align-items-center border-bottom px-3 py-2">
                                                <span class="btn btn-primary rounded-circle btn-circle"><i
                                                        data-feather="box" class="text-white"></i></span>
                                                <div class="w-75 d-inline-block v-middle pl-2">
                                                    <h6 class="message-title mb-0 mt-1">Lorenzo Moretti</h6> <span
                                                        class="font-12 text-nowrap d-block text-muted">Just
                                                        see the my admin!</span>
                                                    <span class="font-12 text-nowrap d-block text-muted">9:02 AM</span>
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <a class="nav-link pt-3 text-center text-dark" href="javascript:void(0);">
                                            <strong>Check all notifications</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- End Notification -->
                        <!-- ============================================================== -->
                        <!-- create new -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i data-feather="settings" class="svg-icon"></i>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                        <li class="nav-item d-none d-md-block">
                            <a class="nav-link" href="javascript:void(0)">
                                <div class="customize-input">
                                    <select
                                        class="custom-select form-control bg-white custom-radius custom-shadow border-0">
                                        <option selected>EN</option>
                                        <option value="1">AB</option>
                                        <option value="2">AK</option>
                                        <option value="3">BE</option>
                                    </select>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-right">
                    <?php
$i=0;
while($row = mysqli_fetch_array($result)) {
if($i%2==0)
$classname="even";
else
$classname="odd";
?>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <img src="profile/<?php echo $row["pro_image"]; ?>" alt="user" class="rounded-circle"
                                    width="40">
                                <span class="ml-2 d-none d-lg-inline-block"><span>Hello,</span> <span
                                        class="text-dark"><?php echo $row["name"]; ?></span> <i data-feather="chevron-down"
                                        class="svg-icon"></i></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                                
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="index.php"><i data-feather="power"
                                        class="svg-icon mr-2 ml-1"></i>
                                    Logout</a>
                                <div class="dropdown-divider"></div>
                                
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar" data-sidebarbg="skin6">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="#"
                                aria-expanded="false"><i data-feather="home" class="feather-icon"></i><span
                                    class="hide-menu">Dashboard</span></a></li>
                        <li class="list-divider"></li>
                        

                        <li class="sidebar-item"> <a class="sidebar-link" href="f_dash.php"
                                aria-expanded="false"><span
                                    class="hide-menu">MY PROFILE
                                </span></a>
                        </li>
                        

                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu"></span></li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><span
                                    class="hide-menu"> TARGETs </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                                <li class="sidebar-item"><a href="form-inputs.php" class="sidebar-link"><span
                                            class="hide-menu">Set Targets
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="achieved_targets.php" class="sidebar-link"><span
                                            class="hide-menu"> Achieved Targets
                                        </span></a>
                                </li>
                               
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i data-feather="grid" class="feather-icon"></i><span
                                    class="hide-menu"> View  set Targets </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                            <li class="sidebar-item"><a href="table-basic.php" class="sidebar-link"><span
                                            class="hide-menu"> View  set Targets
                                        </span></a>
                                </li>
                                
                            </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i data-feather="bar-chart" class="feather-icon"></i><span
                                    class="hide-menu">FORMS</span></a>
                                    <ul aria-expanded="false" class="collapse  first-level base-level-line">  <!--DROPDOWN -->
                                <li class="sidebar-item"><a href="form_1.php" class="sidebar-link"><span
                                            class="hide-menu">Journal Pub Planned
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form_2.php" class="sidebar-link"><span
                                            class="hide-menu"> Journal Paper Accepted
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form_3.php" class="sidebar-link"><span
                                            class="hide-menu">
                                            Papers Published
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form_4.php" class="sidebar-link"><span
                                            class="hide-menu">
                                            Papers Presented in Conf
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form_5.php" class="sidebar-link"><span
                                            class="hide-menu">
                                            Workshops Organized
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form_6.php" class="sidebar-link"><span
                                            class="hide-menu">
                                            Conference Organized
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form_7.php" class="sidebar-link"><span
                                            class="hide-menu">
                                            Guest Lectures Del
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form_8.php" class="sidebar-link"><span
                                            class="hide-menu">
                                            Details of Patents
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form_9.php" class="sidebar-link"><span
                                            class="hide-menu">
                                            Book Chapter
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form_10.php" class="sidebar-link"><span
                                            class="hide-menu">
                                           Awd/ Honours Received
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form_11.php" class="sidebar-link"><span
                                            class="hide-menu">
                                            Research Proposal Planned
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form_11 copy.php" class="sidebar-link"><span
                                            class="hide-menu">
                                            Research Propo Submitted
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form_12.php" class="sidebar-link"><span
                                            class="hide-menu">
                                            Webinars Attended
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="form_13.php" class="sidebar-link"><span
                                            class="hide-menu">
                                            certifications completed
                                        </span></a>
                                </li>
                                

                            </ul>
                        </li>
                       

                       
                        <li class="list-divider"></li>
                       
                        
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="index.php"
                                aria-expanded="false"><i data-feather="log-out" class="feather-icon"></i><span
                                    class="hide-menu">Logout</span></a></li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Details Of Guest Lectures Delivered</h4>
                        <div class="d-flex align-items-center">
                            
                        </div>
                    </div>
                    <div class="col-5 align-self-center">
                        <div class="customize-input float-right">
                            <select class="custom-select custom-select-set form-control bg-white border-0 custom-shadow custom-radius">
                            <?php
// Set the new timezone
date_default_timezone_set('Asia/Kolkata');
$date = date('d-m-y h:i:s');
echo $date;
?>
                                <option > <?php echo $date; ?></option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
            
                <div class="row">
                    
                    <div class="col-sm-12 col-md-6 col-lg-4">
                   
                        <div class="card">
                       
                            <div class="card-body" >
                                <form class="mt-6" action="" method="POST">
                                
                                    <div class="form-group"  >
                                         <label for="">Email:</label>
                                        <input type="text" class="form-control" name="2"  value="<?php echo $row["email"]; ?>">
                                        <hr >
                                        <label for="">ID:</label>
                                        <input type="text" class="form-control" name="1" value="<?php echo $row["id"]; ?>">
                                        <hr >
                                        <label for="">Name of the Faculty :</label>
                                        <input type="text" class="form-control" name="3" value="<?php echo $row["name"]; ?>">
                                        <hr>
                                        <label for="">Title of the Talk delivered:</label>
                                        <input type="text" class="form-control" name="4">
                                        <hr>
                                        <label for="">Date:</label>
                                        <input type="text" class="form-control" name="5">
                                        <hr>
                                        <label for="">Details of the Organiser:</label>
                                        <input type="text" class="form-control" name="6">
                                        <hr>
                                        
                                        <input  name="register" class="form-control" type="submit" style="color:black;">

                                    </div>
                                    
                                </form>
                            </div>
                         
                        </div>
                           
                    </div>
                   
                   
                    </div>
                    </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
           
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <?php
$i++;
}
?><!-- footer -->
            
            <!-- ============================================================== -->
            <footer class="footer text-center">
                All Rights Reserved by . Designed and Developed by 
                   .
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <div class="chat-windows "></div>
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="assets/libs/jquery/dist/jquery.min.js "></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="assets/libs/popper.js/dist/umd/popper.min.js "></script>
    <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js "></script>
    <!-- apps -->
    <script src="dist/js/app.min.js "></script>
    <script src="dist/js/app.init-menusidebar.js"></script>
    <script src="dist/js/app-style-switcher.js "></script>
    <script src="dist/js/feather.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js "></script>
    <script src="assets/extra-libs/sparkline/sparkline.js "></script>
    <!-- theme js -->
    <!--Menu sidebar -->
    <script src="dist/js/sidebarmenu.js "></script>
    <!--Custom JavaScript -->
    <script src="dist/js/custom.min.js "></script>
</body>

</html>