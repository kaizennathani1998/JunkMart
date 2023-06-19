<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Fashi Template">
        <meta name="keywords" content="Fashi, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>JunKMart|HOME</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/themify-icons.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css"><script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/themify-icons.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <style>
            .dropbtn {
                background-color: #009966;
                color: white;
                padding: 11px;
                font-size: 16px;
                border: none;
                cursor: pointer;
                margin-left: 60px;
                height: 48px;
            }

            .dropbtn:hover, .dropbtn:focus {
                background-color: #2980B9;
            }

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f1f1f1;
                min-width: 160px;
                overflow: auto;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }
            .filterDiv {
                float: left;


                width: 250px;
                line-height: 100px;
                text-align: center;
                margin: 2px;
                display: none;
            }

            .show {
                display: block;
            }
            .btn {
                border: none;
                outline: none;
                padding: 12px 16px;
                background-color: #f1f1f1;
                cursor: pointer;
                background-color: #009966;
                color: white;
                font-size: 18px;
            }
            .btn:hover {
                background-color: #ddd;
            }

            .btn.active {


            }

            .dropdown a:hover {background-color: #ddd;}

            .show {display: block;}
        </style>
    </head>

    <body onload="startTime();">

        <header class="header-section" style=" margin-top: 0px; background-color: whitesmoke;" >
            <div class="header-top" style=" border-bottom: none; ">
                <div class="container" style=" border-bottom: none  ">
                    <div class="ht-left">
                        <div  class="mail-service" style="font-size: 20px;">
                            <a href="index.jsp">
                                <img  src="img/h0.JPG" alt="" style=" margin-top: 3px; padding-bottom: -40px; height: 60px; width: 200px; ">
                            </a>
                        </div>
                        <div class="phone-service" style=" margin-left: 100px;">

                            <script>
                                /* When the user clicks on the button, 
                                 toggle between hiding and showing the dropdown content */
                                function myFunction() {
                                    document.getElementById("myDropdown").classList.toggle("show");
                                }

                                // Close the dropdown if the user clicks outside of it
                                window.onclick = function (event) {
                                    if (!event.target.matches('.dropbtn')) {
                                        var dropdowns = document.getElementsByClassName("dropdown-content");
                                        var i;
                                        for (i = 0; i < dropdowns.length; i++) {
                                            var openDropdown = dropdowns[i];
                                            if (openDropdown.classList.contains('show')) {
                                                openDropdown.classList.remove('show');
                                            }
                                        }
                                    }
                                }
                            </script>

                            <form action="search.jsp" method="POST" >
                                <input id="searchInput" name="search" type="text" placeholder="What do you need?" style=" color: black; margin-left: -3.5px; width: 500px; margin-top: 13px;height: 48px; font-size: 19px; opacity: 10;" >

                                <!-- mic btn -->
                                <button type="button" onclick="recognize()" style="font-size: 17px; color: #ffffff; margin-left: -4px;border: 1px solid #009966;background: #009966;padding: 9.5px 12px 9.5px;cursor: pointer;">
                                    <i id="micIcon" class="fa fa-microphone"></i>
                                </button>

                                <!-- search btn -->
                                <button  type="submit" style="font-size: 17px; color: #ffffff; margin-left: -4px;border: 1px solid #009966;background: #009966;padding: 9.5px 12px 9.5px;cursor: pointer;">
                                    <i class="fa fa-search"></i>
                                </button>
                            </form>
                        </div>

                    </div>
                    <%
                        String uname = (String) session.getAttribute("urname");
                        String username = "";
                        String redirect = "myprofile.jsp?+";
                        String redirect2 = "mycart.jsp?+";
                        String redirect3 = "Signout.jsp";
                        String out1 = "SIGNOUT";
                        int flag = 0;
                        if (uname == null) {
                            username = "LOGIN";
                            redirect = "login.jsp";
                            redirect2 = "login.jsp";
                            out1 = "SIGNUP";
                            redirect3 = "register.html";
                            flag = 0;
                        } else {
                            username = uname;
                            redirect = redirect.concat(username);
                            redirect2 = redirect2.concat(username);
                            flag = 1;
                        }
                    %>
                    <div class="ht-right" style=" margin-left: -60px;">
                        <div style=" margin-top: -5px;">


                            <a href="<%=redirect%>" class="login-panel"><i class="fa fa-user fa-2x" ></i><%=username%></a>
                        </div>
                        <div style="margin-top: 70px; margin-left: 200px;">
                            <a   style=" font-size:12px; color: #009966; margin-left: -73px; margin-top: -10px;" href="signout.jsp?+<%=out1%>"><%=out1%></a>
                        </div>
                        <div style=" margin-left: 220px; margin-top: -142px;">
                            <a style=" margin-left: 0px;" href="<%=redirect2%>" class="cart"><i class=" fa fa-shopping-cart fa-2x"></i>Cart</a>
                        </div>

                    </div>

                </div>
            </div>
            <div class="container">
                <div class="inner-header">
                    <div class="row">

                        <div class="col-lg-7 col-md-7">

                        </div>
                        <div class="col-lg-3 text-right col-md-3">
                            <ul class="nav-right">


                        </div>

                    </div>
                </div>
            </div>

            <div class="nav-item" style=" ">
                <div class="container">
                    <div class="nav-depart" style=" height: 50px;">
                        <div class="depart-btn" style=" height: 53.5px;">
                            <i class="fa fa-list"></i>
                            <span>All Categories</span>
                            <ul class="depart-hover">
                                <li><a href="search2.jsp?+e-waste">E-waste</a></li>
                                <li><a href="search2.jsp?+clothing">Clothing</a></li>
                                <li><a href="search2.jsp?+plastics">Plastics</a></li>
                                <li><a href="search2.jsp?+metals">Metals</a></li>
                                <li><a href="search2.jsp?+paper">Paper</a></li>
                                <li><a href="search2.jsp?+organic">Organic</a></li>
                            </ul>
                        </div>
                    </div>
                    <%
                        String buy = "buy.jsp?+";
                        if (flag == 0) {
                            buy = "buy.jsp";
                        } else if (flag == 1) {
                            String a = uname;
                            buy = buy.concat(uname);
                        }

                    %>
                    <nav class="nav-menu">
                        <ul style=" height: 53.5px;">

                            <li><a href="<%=buy%>">Buy</a></li>
                            <li><a href="sell.jsp">Sell</a></li>
                            <li><a href="contact.jsp">About us</a></li>
                            <li><a href="#">Join Us</a>
                                <ul class="dropdown">
                                    <li><a href="vendor.jsp">Junk Vendor</a></li>
                                    <li><a href="truck1.jsp">Truck Service</a></li>
                                    <li><a href="register.html">Consumer</a></li>
                                    <li><a href="sell.jsp">Supplier</a></li>

                                </ul>
                            </li>

                            <li><a href="rate.html">Rate Card</a></li>


                        </ul>

                        <i class=" fa fa-map-marker" style=" text-align:left; font-size: 35px; margin-left: 70px; padding-top:6px; color: white;" > </i>
                        <p style=" color:white; margin-left:6px; margin-top: 2px; font-size: 11px;   " >Deliver to</p>
                        <p style=" color: white; margin-top: 13px; margin-left: -47px; font-size: 13px;"><b>Pune</b></p>

                    </nav>

                </div>
            </div>
        </header>
        <!-- Header Ends -->

        <!-- Carousel begins -->
        <div class="container">

            <div id="myCarousel" class="carousel slide" data-ride="carousel" style=" width: 127%; margin-left:-150px; ">
                <!-- Indicators -->
                <ol class="carousel-indicators" >
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" style=" height: 600px;">
                    <div class="item active">
                        <img src="img/Work/1.JPG" alt="Los Angeles" style="width:100%;">
                    </div>

                    <div class="item">
                        <img src="img/Work/2.2.JPG" alt="Chicago" style="width:100%;">
                    </div>

                    <div class="item">
                        <img src="img/Work/3.2.JPG" alt="New york" style="width:100%;">
                    </div>
                    <div class="item">
                        <img src="img/Work/4.2.JPG" alt="New york" style="width:100%;">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <!-- Carosoule ends -->
        <!-- Banner Section Begin -->
        <div class="banner-section spad">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="single-banner" style=" ">
                            <img src="img/plastics2.jpg" alt="">
                            <div class="inner-text">
                                <h4 style="  ">PLASTICS</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-banner" style=" ">
                            <img src="img/ewastes2.jpg" alt="">
                            <div class="inner-text">
                                <h4 style="  ">E-WASTE</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-banner" style=" ">
                            <img src="img/organics2.jpg" alt="">
                            <div class="inner-text">
                                <h4 style="  ">ORGANIC WASTE</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Banner Section End -->

        <!-- Product-Banner Starts -->


        <div class="col-lg-3" style=" margin-left: 50px; height: 600px;">
            <img src="img/products/bottles1.png">
            <h2 style=" font-size: 40px; text-decoration: none; color: white; position: absolute; margin-top: -210px; margin-left: -1px; text-align: center;">Single Use Plastics<br>
                <a  style=" font-size: 25px; text-decoration: underline; padding-bottom: 2px; color: white;  " href="#">Discover More</a></h2>

        </div>

        <div class="col-lg-8 offset-lg-1" style="  margin-left: 40px;">
            <div id="myBtnContainer" style=" align-content: center; width: 92.5%; margin-left: 15px; background-color: #009966;">
                <button class="btn active" onclick="filterSelection('bottles')" style=" margin-left: 200px;">Bottles</button>
                <button class="btn" onclick="filterSelection('bags')">Bags</button>
                <button class="btn" onclick="filterSelection('toys')">Toys</button>
                <button class="btn" onclick="filterSelection('Packaging')">Packaging</button>


            </div>
            <div class="container">
                <div class="filterDiv bottles"> <div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/pbottle1.jpg" alt="">
                            <div class="sale" style=" background-color: #009966; height: 50px; width: 70px;" ><p style=" color: white; margin-top: 0px;">Sale</p></div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <div style=" margin-top:  0px; height: 0px;">
                                <ul  style=" height: 80px;">
                                    <li class="w-icon active" style=" "><a href="#" style=" "><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ Quick View</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="pi-text" style=" margin-top: -50px;">
                            <div class="catagory-name">PLASTICS</div>
                            <a href="#">
                                <h5 style=" margin-top: -40px;">Wine Bottles</h5>
                            </a>
                            <div class="product-price" style=" margin-top: -40px; color: #009966;">
                                ₹14.00
                                <span>₹35.00</span>
                            </div>
                        </div>
                    </div></div>

                <div class="filterDiv bottles"> 
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/pbottle1.jpg" alt="">
                            <div class="sale" style=" background-color: #009966; height: 50px; width: 70px;" ><p style=" color: white; margin-top: 0px;">Sale</p></div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <div style=" margin-top:  0px; height: 0px;">
                                <ul  style=" height: 80px;">
                                    <li class="w-icon active" style=" "><a href="#" style=" "><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ Quick View</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="pi-text" style=" margin-top: -50px;">
                            <div class="catagory-name">PLASTICS</div>
                            <a href="#">
                                <h5 style=" margin-top: -40px;">Wine Bottles</h5>
                            </a>
                            <div class="product-price" style=" margin-top: -40px; color: #009966;">
                                ₹14.00
                                <span>₹35.00</span>
                            </div>
                        </div>
                    </div></div>
                <div class="filterDiv bottles"> 
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/pbottle1.jpg" alt="">
                            <div class="sale" style=" background-color: #009966; height: 50px; width: 70px;" ><p style=" color: white; margin-top: 0px;">Sale</p></div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <div style=" margin-top:  0px; height: 0px;">
                                <ul  style=" height: 80px;">
                                    <li class="w-icon active" style=" "><a href="#" style=" "><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ Quick View</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="pi-text" style=" margin-top: -50px;">
                            <div class="catagory-name">PLASTICS</div>
                            <a href="#">
                                <h5 style=" margin-top: -40px;">Wine Bottles</h5>
                            </a>
                            <div class="product-price" style=" margin-top: -40px; color: #009966;">
                                ₹14.00
                                <span>₹35.00</span>
                            </div>
                        </div>
                    </div></div>


                <div class="filterDiv bags"><div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/bag1.jpg" alt="">
                            <div class="sale" style=" background-color: #009966; height: 50px; width: 70px;" ><p style=" color: white; margin-top: 0px;">Sale</p></div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <div style=" margin-top:  0px; height: 0px;">
                                <ul  style=" height: 80px;">
                                    <li class="w-icon active" style=" "><a href="#" style=" "><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ Quick View</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="pi-text" style=" margin-top: -50px;">
                            <div class="catagory-name">PLASTICS</div>
                            <a href="#">
                                <h5 style=" margin-top: -40px;">Plastic Bags</h5>
                            </a>
                            <div class="product-price" style=" margin-top: -40px; color: #009966;">
                                ₹14.00
                                <span>₹35.00</span>
                            </div>
                        </div>
                    </div></div>

                <div class="filterDiv bags"><div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/bag1.jpg" alt="">
                            <div class="sale" style=" background-color: #009966; height: 50px; width: 70px;" ><p style=" color: white; margin-top: 0px;">Sale</p></div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <div style=" margin-top:  0px; height: 0px;">
                                <ul  style=" height: 80px;">
                                    <li class="w-icon active" style=" "><a href="#" style=" "><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ Quick View</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="pi-text" style=" margin-top: -50px;">
                            <div class="catagory-name">PLASTICS</div>
                            <a href="#">
                                <h5 style=" margin-top: -40px;">Plastic Bags</h5>
                            </a>
                            <div class="product-price" style=" margin-top: -40px; color: #009966;">
                                ₹14.00
                                <span>₹35.00</span>
                            </div>
                        </div>
                    </div></div>
                <div class="filterDiv bags"><div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/bag1.jpg" alt="">
                            <div class="sale" style=" background-color: #009966; height: 50px; width: 70px;" ><p style=" color: white; margin-top: 0px;">Sale</p></div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <div style=" margin-top:  0px; height: 0px;">
                                <ul  style=" height: 80px;">
                                    <li class="w-icon active" style=" "><a href="#" style=" "><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ Quick View</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="pi-text" style=" margin-top: -50px;">
                            <div class="catagory-name">PLASTICS</div>
                            <a href="#">
                                <h5 style=" margin-top: -40px;">Plastic Bags</h5>
                            </a>
                            <div class="product-price" style=" margin-top: -40px; color: #009966;">
                                ₹14.00
                                <span>₹35.00</span>
                            </div>
                        </div>
                    </div></div>
                <div class="filterDiv toys"><div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/toys.jpg" alt="">
                            <div class="sale" style=" background-color: #009966; height: 50px; width: 70px;" ><p style=" color: white; margin-top: 0px;">Sale</p></div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <div style=" margin-top:  0px; height: 0px;">
                                <ul  style=" height: 80px;">
                                    <li class="w-icon active" style=" "><a href="#" style=" "><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ Quick View</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="pi-text" style=" margin-top: -50px;">
                            <div class="catagory-name">PLASTICS</div>
                            <a href="#">
                                <h5 style=" margin-top: -40px;">LEGO BLOCKS</h5>
                            </a>
                            <div class="product-price" style=" margin-top: -40px; color: #009966;">
                                ₹14.00
                                <span>₹35.00</span>
                            </div>
                        </div>
                    </div></div>
                <div class="filterDiv toys"><div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/toys.jpg" alt="">
                            <div class="sale" style=" background-color: #009966; height: 50px; width: 70px;" ><p style=" color: white; margin-top: 0px;">Sale</p></div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <div style=" margin-top:  0px; height: 0px;">
                                <ul  style=" height: 80px;">
                                    <li class="w-icon active" style=" "><a href="#" style=" "><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ Quick View</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="pi-text" style=" margin-top: -50px;">
                            <div class="catagory-name">PLASTICS</div>
                            <a href="#">
                                <h5 style=" margin-top: -40px;">LEGO BLOCKS</h5>
                            </a>
                            <div class="product-price" style=" margin-top: -40px; color: #009966;">
                                ₹14.00
                                <span>₹35.00</span>
                            </div>
                        </div>
                    </div></div>
                <div class="filterDiv toys"><div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/toys.jpg" alt="">
                            <div class="sale" style=" background-color: #009966; height: 50px; width: 70px;" ><p style=" color: white; margin-top: 0px;">Sale</p></div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <div style=" margin-top:  0px; height: 0px;">
                                <ul  style=" height: 80px;">
                                    <li class="w-icon active" style=" "><a href="#" style=" "><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ Quick View</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="pi-text" style=" margin-top: -50px;">
                            <div class="catagory-name">PLASTICS</div>
                            <a href="#">
                                <h5 style=" margin-top: -40px;">LEGO BLOCKS</h5>
                            </a>
                            <div class="product-price" style=" margin-top: -40px; color: #009966;">
                                ₹14.00
                                <span>₹35.00</span>
                            </div>
                        </div>
                    </div></div>
                <div class="filterDiv Packaging"><div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/women-1.jpg" alt="">
                            <div class="sale" style=" background-color: #009966; height: 50px; width: 70px;" ><p style=" color: white; margin-top: 0px;">Sale</p></div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <div style=" margin-top:  0px; height: 0px;">
                                <ul  style=" height: 80px;">
                                    <li class="w-icon active" style=" "><a href="#" style=" "><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ Quick View</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="pi-text" style=" margin-top: -50px;">
                            <div class="catagory-name">PLASTICS</div>
                            <a href="#">
                                <h5 style=" margin-top: -40px;">Pure Pineapple</h5>
                            </a>
                            <div class="product-price" style=" margin-top: -40px; color: #009966;">
                                ₹14.00
                                <span>₹35.00</span>
                            </div>
                        </div>
                    </div></div>
                <div class="filterDiv Packaging"><div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/women-1.jpg" alt="">
                            <div class="sale" style=" background-color: #009966; height: 50px; width: 70px;" ><p style=" color: white; margin-top: 0px;">Sale</p></div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <div style=" margin-top:  0px; height: 0px;">
                                <ul  style=" height: 80px;">
                                    <li class="w-icon active" style=" "><a href="#" style=" "><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ Quick View</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="pi-text" style=" margin-top: -50px;">
                            <div class="catagory-name">PLASTICS</div>
                            <a href="#">
                                <h5 style=" margin-top: -40px;">Pure Pineapple</h5>
                            </a>
                            <div class="product-price" style=" margin-top: -40px; color: #009966;">
                                ₹14.00
                                <span>₹35.00</span>
                            </div>
                        </div>
                    </div></div>
                <div class="filterDiv Packaging"><div class="product-item">
                        <div class="pi-pic">
                            <img src="img/products/women-1.jpg" alt="">
                            <div class="sale" style=" background-color: #009966; height: 50px; width: 70px;" ><p style=" color: white; margin-top: 0px;">Sale</p></div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <div style=" margin-top:  0px; height: 0px;">
                                <ul  style=" height: 80px;">
                                    <li class="w-icon active" style=" "><a href="#" style=" "><i class="icon_bag_alt"></i></a></li>
                                    <li class="quick-view"><a href="#">+ Quick View</a></li>
                                    <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="pi-text" style=" margin-top: -50px;">
                            <div class="catagory-name">PLASTICS</div>
                            <a href="#">
                                <h5 style=" margin-top: -40px;">Wine Bottles</h5>
                            </a>
                            <div class="product-price" style=" margin-top: -40px; color: #009966;">
                                ₹14.00
                                <span>₹35.00</span>
                            </div>
                        </div>
                    </div></div>
            </div>
        </div>










        <script>
            filterSelection("bottles")
            function filterSelection(c) {
                var x, i;
                x = document.getElementsByClassName("filterDiv");
                if (c == "all")
                    c = "";
                for (i = 0; i < x.length; i++) {
                    w3RemoveClass(x[i], "show");
                    if (x[i].className.indexOf(c) > -1)
                        w3AddClass(x[i], "show");
                }
            }

            function w3AddClass(element, name) {
                var i, arr1, arr2;
                arr1 = element.className.split(" ");
                arr2 = name.split(" ");
                for (i = 0; i < arr2.length; i++) {
                    if (arr1.indexOf(arr2[i]) == -1) {
                        element.className += " " + arr2[i];
                    }
                }
            }

            function w3RemoveClass(element, name) {
                var i, arr1, arr2;
                arr1 = element.className.split(" ");
                arr2 = name.split(" ");
                for (i = 0; i < arr2.length; i++) {
                    while (arr1.indexOf(arr2[i]) > -1) {
                        arr1.splice(arr1.indexOf(arr2[i]), 1);
                    }
                }
                element.className = arr1.join(" ");
            }

            // Add active class to the current button (highlight it)
            var btnContainer = document.getElementById("myBtnContainer");
            var btns = btnContainer.getElementsByClassName("btn");
            for (var i = 0; i < btns.length; i++) {
                btns[i].addEventListener("click", function () {
                    var current = document.getElementsByClassName("active");
                    current[0].className = current[0].className.replace(" active", "");
                    this.className += " active";

                });
            }
        </script>

        <!-- Product-Banner Ends -->

        <!-- Deal section Start -->
        <div class="col-lg-0" style=" width: 91%; margin-left: 65px; margin-top: 40px;">
            <div class="section-title" style=" margin-top: 40px;">
                <a href=" buy.jsp"> <img src="img/deals.png" alt=""  style=" margin-top: 40px;">
                </a>
            </div>
        </div>
        <div class="col-lg-0" style=" width: 91%; margin-left: 65px; margin-top: 40px; ">
            <div class="section-title" style=" margin-top: 40px;">
                <img src="img/benefits.png" alt=""  style=" margin-top: 40px;">
                <div class="inner-text" style=" ">
                    <a href="buy.jsp"><h4 style="visibility: hidden;  position: absolute; left: 78%; margin-top: -200px; border:1px solid black; height:300px; width: 300px;  ">SHOP</h4></a>
                </div>
            </div>
        </div>
        <!-- Deal section End -->

        <div class="partner-logo">
            <div class="container">
                <div class="logo-carousel owl-carousel">
                    <div class="logo-item">
                        <div class="tablecell-inner">
                            <img src="img/logo-carousel/logo-1.png" alt="">
                        </div>
                    </div>
                    <div class="logo-item">
                        <div class="tablecell-inner">
                            <img src="img/logo-carousel/logo-2.png" alt="">
                        </div>
                    </div>
                    <div class="logo-item">
                        <div class="tablecell-inner">
                            <img src="img/logo-carousel/logo-3.png" alt="">
                        </div>
                    </div>
                    <div class="logo-item">
                        <div class="tablecell-inner">
                            <img src="img/logo-carousel/logo-4.png" alt="">
                        </div>
                    </div>
                    <div class="logo-item">
                        <div class="tablecell-inner">
                            <img src="img/logo-carousel/logo-5.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Partner Logo Section End -->

        <!-- Footer Section Begin -->
        <footer class="footer-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="footer-left" style=" ">
                            <div class="footer-logo" >
                                <a href="#"><img src="img/h0.JPG" alt=""></a>
                            </div>
                            <ul>
                                <li>Address: MIT-ADT University<br>RajbaugCampus<br>Loni Kalbhor, Pune-412201</li>
                                <li>Phone: +91-902134567</li>
                                <li>Email: thegreen-crew@gmail.com</li>
                            </ul>
                            <div class="footer-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 offset-lg-1">
                        <div class="footer-widget">
                            <h5>Support</h5>
                            <ul>
                                <li><a href="#">FAQ's</a></li>
                                <li><a href="contact.html">Contact us</a></li>
                                <li><a href="#">Help</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="footer-widget">
                            <h5>Services</h5>
                            <ul>
                                <li><a href="pickup.html">Scrap pick-up</a></li>
                                <li><a href="#">Tie-ups</a></li>
                                <li><a href="#">Our alliances</a></li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="footer-widget">
                            <h5>Company</h5>
                            <ul>
                                <li><a href="contact.jsp">About Us</a></li>
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">How we work</a></li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="footer-widget">
                            <h5>Make money</h5>
                            <ul>
                                <li><a href="#">Sell on JunkMart</a></li>
                                <li><a href="#">Sell your services</a></li>
                                <li><a href="#">Become an Affiliate</a></li>

                            </ul>
                        </div>
                    </div>
                    <div class="footer-widget" style=" position: absolute; left: 58.1%; margin-top: 320px;   ">
                        <ul>
                            <li><a href="#">Privacy Policy | Terms and Conditions</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-4" style=" margin-left: 380px; margin-top: 0px;">
                        <div class="newslatter-item">
                            <h5>Join Our Newsletter Now</h5>

                            <form action="#" class="subscribe-form">
                                <input type="text" placeholder="Enter Your Mail">
                                <button type="button">Subscribe</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright-reserved">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="copyright-text">
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | JunkMart
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </div>
                            <div class="payment-pic">
                                <img src="img/payment-method.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.zoom.min.js"></script>
        <script src="js/jquery.dd.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>

        <script>


                                    if ('webkitSpeechRecognition' in window) {
                                        var recognition = new webkitSpeechRecognition()
                                        var final_transcript = ''
                                        recognition.continuous = true
                                        recognition.interimResults = true

                                        recognition.onstart = function () {
                                            console.log('listening');
                                            document.querySelector("#micIcon").className = "fa fa-microphone-slash";
                                        }

                                        recognition.onresult = function (event) {
                                            console.log('result')
                                            var interim_transcript = ''

                                            for (var i = event.resultIndex; i < event.results.length; ++i) {
                                                if (event.results[i].isFinal) {
                                                    var transformed_result = event.results[i][0].transcript.trim()
                                                    transformed_result = transformed_result.substr(0, 1).toUpperCase() +
                                                            transformed_result.substr(1)
                                                    final_transcript += transformed_result + " "
                                                } else {
                                                    interim_transcript += event.results[i][0].transcript
                                                }
                                            }

                                            document.querySelector('#searchInput').value = final_transcript;
                                        }

                                        recognition.onerror = function (event) {
                                            console.log('error')
                                            document.querySelector("#micIcon").className = "fa fa-microphone";
                                        }

                                        recognition.onend = function () {
                                            console.log('end')
                                            document.querySelector("#micIcon").className = "fa fa-microphone";
                                        }

                                        recognition.lang = 'en-US'
                                        document.querySelector("#micIcon").className = "fa fa-microphone";

                                    }



                                    const recognize = (e) => {

                                        if (recognition.started) {
                                            recognition.stop()
                                            recognition.started = false
                                        } else {
                                            recognition.start()
                                            recognition.started = true
                                        }
                                    }

        </script>
    </body>

</html>
</body>
</html>