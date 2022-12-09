<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <!-- <link rel="stylesheet" href="./assets/css/reset.css"> -->
    <link rel="stylesheet" href="./basic/assets/css/registerv1.css">
    <link rel="stylesheet" href="./basic/font2022.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <link rel="apple-touch-icon" sizes="57x57" href="./basic/assets/img/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="./basic/assets/img/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="./basic/assets/img/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="./basic/assets/img/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="./basic/assets/img/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="./basic/assets/img/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="./basic/assets/img/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="./basic/assets/img/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="./basic/assets/img/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="./basic/assets/img/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./basic/assets/img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="./basic/assets/img/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./basic/assets/img/favicon/favicon-16x16.png">
    <!-- <link rel="manifest" href="./basic/manifest.json"> -->
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
</head>
<body>
    <section>
        <!--Bắt Đầu Phần Hình Ảnh-->
        <div class="img-bg">
            <img src="./basic/assets/img/slider/photo-1584843267830-32aa11fc1ce4.avif" alt="Hình Ảnh Minh Họa">
        </div>
        <!--Kết Thúc Phần Hình Ảnh-->
        <!--Bắt Đầu Phần Nội Dung-->
        <div class="content">
            <div class="logo">
                <a href="home"><img src="./basic/assets/img/favicon/android-icon-48x48.png" alt=""></a>
            </div>
            <div class="form">
                <h1 class="title-page">Register Page</h1>
                <form class="register_form" action="register" method="post" name="form" >
            		<c:if test="${alert != null}"><h3>${alert}</h3></c:if>
                    <div class="input-form">
                        <span>Name</span>
                        <input type="text" class="input" name="nameAccount" value="${nameAccount}"> 
                    </div>
                    <!-- <div id="username_error">You must enter all 9 characters</div> -->
                    <div class="input-form">
                        <span>Phone</span>
                        <input type="tel" name="phoneAccount" value = "${phoneAccount}">
                    </div>
                    <div id="phone_error">You must enter your phone </div>
                    <div class="input-form">
                        <span>Email</span>
                        <input type="text" name="emailAccount" value = "${emailAccount}">
                    </div>
                    <div id="email_error">You must enter format email</div>
                    <div class="input-form">
                        <span>Password</span>
                        <input type="password" name="password">
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
                        <input type="password" name="passwordAccount" value = "${passwordAccount}">
                    </div>
                    <div id="conpass_error">You must enter confirm password</div>
                    <div class="input-form">
                        <input  type="submit" value="Register">
                    </div>
                    <div class="input-form">
                        <p>Do you have an account? <a href="login">Login</a></p>
                    </div>
                </form>
            </div>
        </div>
        <!--Kết Thúc Phần Nội Dung-->
    </section>
    <script src="./basic/javascript/registerUpdated.js"></script>
</body>
</html>