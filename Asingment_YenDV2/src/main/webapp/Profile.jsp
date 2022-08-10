<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <meta name="description" content="Developed By M Abdur Rokib Promy">
    <meta name="keywords" content="Admin, Bootstrap 3, Template, Theme, Responsive">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

    <link href="/resource/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <link href="/resource/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <link href="/resource/css/ionicons.min.css" rel="stylesheet" type="text/css" />

    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>

    <link href="./css/styleProfile.css" rel="stylesheet" type="text/css" />


</head>

<body class="skin-black">

    <header class="header">
        <nav class="navbar-left">
            <h4>CMS</h4>
        </nav>
        <nav class="navbar navbar-static-top" role="navigation">

            <div class="navbar-right">

                <ul class="nav navbar-nav">

                    <li class="dropdown user user-menu">

                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-user"></i>
                            <span><i class="caret"></i></span>
                        </a>
                        <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                            <li class="divider"></li>
                            <li>
                                <a href="edit_profile.html">
                                    <i class="fa fa-user fa-fw pull-left"></i> Profile
                                </a>

                            </li>

                            <li class="divider"></li>

                            <li>
                                <a href="#"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a>
                            </li>
                        </ul>

                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <aside class="left-side sidebar-offcanvas">
            <section class="sidebar">
                <form action="#" method="get" class="sidebar-form">
                    <div class="input-group search1">
                        <input type="text" class="form-control" placeholder="Search..." />
                        <span class="input-group-btn search1">
                                <button type='submit'  class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                    </div>
                </form>

                <ul class="sidebar-menu">

                    <li class="active">
                        <a href="view_contents.html">
                            <i class="fa fa-table" aria-hidden="true"></i><span>View Contents</span>
                        </a>
                    </li>

                    <li>
                        <a href="form_content.html">
                            <i class="fa fa-pencil-square-o" aria-hidden="true"></i><span>Form Contents</span>
                        </a>
                    </li>

                </ul>
            </section>

        </aside>


        <aside class="right-side">



            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <h4 style="font-size: 26px; margin-left: 30px;">Edit Profile</h4>
                    <div class="col-lg-11 form1">
                        <header class="panel-heading">
                            Profile Form Element
                        </header>
                        <section class="panel">

                            <div class="panel-body col-lg-9">
                                <form role="form">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">First Name</label>
                                        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Input the first name">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Last Name</label>
                                        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Input the last name">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="your_email@example.com">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Phone</label>
                                        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your phone number">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Description</label>
                                        <textarea rows="4" class="form-control"></textarea>
                                    </div>

                                    <div>
                                        <button type="submit" class="btn1">Submit Button</button>
                                        <button type="submit" class="btn1">Reset Button</button>
                                    </div>

                                </form>

                            </div>
                        </section>
                    </div>
                </div>
            </section>

        </aside>

    </div>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <script src="/resource/js/jquery.min.js" type="text/javascript"></script>

    <!-- Bootstrap -->
    <script src="/resource/js/bootstrap.js" type="text/javascript"></script>
    <script src="/resource/js/bootstrap.min.js" type="text/javascript"></script>


</body>

</html>