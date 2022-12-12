<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./basic/assets/css/reset.css">
    <link rel="stylesheet" href="./basic/font2022.css">
    <link  rel="stylesheet" href="./basic/assets/css/profilev3.css">    
    <link rel="stylesheet" href="./basic/assets/css/logoutButton.css">
    <link rel="stylesheet" href="./basic/assets/css/cartv1.css">
    <link rel="stylesheet" href="https://cdn.leanhduc.pro.vn/utilities/animation/shake-effect/style.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"> -->
    <link rel="apple-touch-icon" sizes="57x57" href="./basic/assets/img/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="./basic/assets/img/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="./basic/assets/img/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="./basic/assets/img/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="./basic/assets/img/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="./basic/assets/img/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="./basic/assets/img/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="./basic/assets/img/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="./basic/assets/img/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="./assets/img/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./basic/assets/img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="./basic/assets/img/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./basic/assets/img/favicon/favicon-16x16.png">
    <!-- <link rel="manifest" href="/manifest.json"> -->
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
</head>
<body>
    <div id="main">
        <%@include file="/common/web/header.jsp" %>
        
        <div id="content">
            <div class="rung">
                <!-- object -->
            </div>
            <!--Contact-->
            <div class="wrap-contact">
                <div class="contact">
                    <div class="button-contact">
                        <a rel=preconnect href="https://www.facebook.com/profile.php?id=100088169090483" target="_blank" rel="noopener">
                            <div class="icon">
                                <i class="fa fa-facebook" aria-hidden="true"></i>
                            </div>
                        </a>
                    </div>
                    <div class="button-contact">
                        <a rel=preconnect href="mailto:20110420@student.hcmute.edu.vn?cc=20110420@student.hcmute.edu.vn">
                            <div class="icon">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </div>
                        </a>
                    </div>
        
                    <div class="button-contact">
                        <a rel=preconnect href="tel:+84522971778">
                            <div class="icon">
                                <i class="fa fa-phone rung" aria-hidden="true"></i>
                            </div>
                        </a> 
                    </div>
                </div>
            </div>
            <!--End contact-->
            
            <!--Begin Profile-->
            
            <h1>User information</h1>
            <div class="wrap-user-profile">
            	
                <div class="user-profile">
                <form method="post">
                    <section class="user-image" >
                        <div class="upload">
                            <img src="${sessionScope.account.avatarAccount}" width = 100 height = 100 alt="" id="image">
                            <div class="round">
                              <input type="file" id="imagefile" accept="image/gif, image/jpeg, image/png" onchange="chooseFile(this)">
                              <i class = "fa fa-camera" style = "color: #fff;"></i>
                            </div>
                        </div>
                        <h2>${sessionScope.account.nameAccount}</h2>
                    </section>
                    <section class="user-info">
                       <div class="content-user-info">
                       
                            <div class="accordion">
                                <div class="accordion-header">
                                    <div class="accordion-header-content">
                                        <h2>Name Account</h2>
                                        <span>${sessionScope.account.nameAccount}</span>
                                    </div>
                                    <i> Edit</i>
                                </div>
                                <div class="accordion-content">
                                  <div class="accordion-content-inner">
                                    <div class="input-form ">
                                        <span>Name Account</span>
                                        <input  type="text" class="input" name="nameAccount" value="${sessionScope.account.nameAccount}" >
                                    </div>
                                    <div id="username_error">You must enter format name</div>
                                  </div>
                                </div>
                              </div>
                              <div class="accordion">
                                <div class="accordion-header">
                                    <div class="accordion-header-content">
                                        <h2>Phone Account</h2>
                                        <span>${sessionScope.account.phoneAccount}</span>
                                    </div>
                                </div>
                              </div>
                              <div class="accordion">
                                <div class="accordion-header">
                                    <div class="accordion-header-content">
                                        <h2>Email Account</h2>
                                        <span>${sessionScope.account.emailAccount}</span>
                                    </div>
                                    <!-- <button class="button-22">Confirmed</button> -->
                                </div>
                              </div>
                              <div class="accordion">
                                <div class="accordion-header">
                                    <div class="accordion-header-content">
                                        <h2>Password Account</h2>
                                        <span>********</span>
                                    </div>
                                    <i> Edit</i>
                                </div>
                                <div class="accordion-content pass">
                                  <div class="accordion-content-inner">
                                    <div class="input-form">
                                        <span>Password</span>
                                        <input type="password" name="passwordAccount" value="${sessionScope.account.passwordAccount}">
                                        <div class="indicator">
                                            <span class="weak"></span>
                                            <span class="medium"></span>
                                            <span class="strong"></span>
                                        </div>
                                        <div class="text"></div>
                                    </div>
                                    <div id="pass_error">You must enter password</div>
                                    <div class="input-form">
                                        <span>Confirm Password</span>
                                        <input type="password" name="cpassword">
                                    </div>
                                    <div id="conpass_error">You must enter confirm password</div>
                                  </div>
                                </div>
                              </div>
                              <input name="phoneAccount" type="hidden" value="${sessionScope.account.phoneAccount}">
                              <input name="oldPasswordAccount" type="hidden" value="${sessionScope.account.passwordAccount}">
                              <input name="oldNameAccount" type="hidden" value="${sessionScope.account.nameAccount}">
                              <input name="roleAccount" type="hidden" value="${sessionScope.account.roleAccount}">
                              <input name="statusAccount" type="hidden" value="${sessionScope.account.statusAccount}">
                              <button class="button-update"> Update </button>
                       </div>
                       
                    </section>
                    </form>
                </div>
            </div>
            <!--End Profile-->
            <%-- <%@include file="/views/cart.jsp" %> --%>
        </div>


       <%@include file="/common/web/footer.jsp" %>
    </div>
    <script src="./basic/javascript/profile.js"></script>
</body>
</html>