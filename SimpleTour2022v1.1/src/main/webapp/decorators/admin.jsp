<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Monsterlite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Monster admin lite design, Monster admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Monster Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Admin</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/monster-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon1.png">
    <!-- Custom CSS -->
    <link href="css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

	<style>
        /* Phần nội dung */
.content {
    width: 100%;
    height: 100%;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
        -ms-flex-pack: center;
            justify-content: center;
    -webkit-box-align: center;
        -ms-flex-align: center;
            align-items: center;
    margin: 0 auto;
}
.content .form {
    width: 30%;
}
.form .title-page {
    color: #009DAE;

    font-weight: 700;
    font-size: 2em;
    font-family: "JetBrains", sans-serif;

    text-transform: uppercase;
    margin-bottom: 20px;
    border-bottom: 4px solid #71DFE7;
    display: inline-block;
    letter-spacing: 1px;
}
.form .input-form{
    margin-bottom: 20px;
}
.form .input-form input {
    width: 100%;
    padding: 10px 20px;
    outline: none;
    border: 1px solid #607d8b;
    font-size: 16px;
    letter-spacing: 1px;
    color: #607d8b;
    background: transparent;
    border-radius: 30px;

    margin-top: 3px;
}
.input-form input[type="submit"]{
    background: #71DFE7;
    color: #fff;
    outline: none;
    border: none;
    font-weight: 500;
    cursor: pointer;
    -webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.12),
                0 2px 2px rgba(0,0,0,0.12),
                0 4px 4px rgba(0,0,0,0.12),
                0 8px 8px rgba(0,0,0,0.12),
                0 16px 16px rgba(0,0,0,0.12);
            box-shadow: 0 1px 1px rgba(0,0,0,0.12),
                0 2px 2px rgba(0,0,0,0.12),
                0 4px 4px rgba(0,0,0,0.12),
                0 8px 8px rgba(0,0,0,0.12),
                0 16px 16px rgba(0,0,0,0.12);
}
.input-form input[type="submit"]:hover{
    background: #009DAE;
}

.form .input-form span{
  font-family: "JetBrains",sans-serif;
  font-size: 14px;
  font-weight: 600;

  margin-left: 3px;
}
.input-form input[type="radio"]{
     display: inline-block;
}
.input-form label {
    display: inline-block;
    top: 20%;
}
.form .input-form-radio span{
  font-family: "JetBrains",sans-serif;
  font-size: 14px;
  font-weight: 600;

  margin-left: 3px;
}
#copyright{
    background-color: #f9f9f9;
}

.copyright-container{
    border-top: #000 solid 1px;
    padding: 18px 0px 24px 20px;
    margin: 0 20px;
}
    </style>
</head>
<dec:body />
</html>