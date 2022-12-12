<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="./basic/assets/css/reset.css">
    <link rel="stylesheet" href="./basic/font2022.css">
    <link rel="stylesheet" href="./basic/assets/css/aboutv4.css">
    <link rel="stylesheet" href="./basic/assets/css/logoutButton.css">
    <link rel="stylesheet" href="./basic/assets/css/cartv1.css">
    <link rel="stylesheet" href="https://cdn.leanhduc.pro.vn/utilities/animation/shake-effect/style.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    <link rel="manifest" href="./basic/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
</head>
<body>
    <div id="main">
        <%@include file="/common/web/header.jsp" %>
        <div class="slideshow">
            <div class="overlay"></div>
            <div class="slideshow-item">
                <img src="./basic/assets/img/slider/199400a4869141cf1880.jpg" alt="ảnh back-ground">
            </div>
            <div class="slideshow-item">
                <img src="./basic/assets/img/slider/308504450_1514054059044586_3100865352089192362_n.jpg" alt="ảnh back-ground">
            </div>
            <div class="slideshow-item">
                <img src="./basic/assets/img/slider/308669811_1514054179044574_8286754678482130865_n.jpg" alt="ảnh back-ground">
            </div>
            <div class="text-content">
                <div class="text-heading">Welcome to Simple Tour</div>
                <h1 class="text-decription">Discover Your Favorite Place with Us</h1>
            </div> 
            
        </div>
        

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
            <h2 class="title-about">ABOUT US</h2>
            <img class="logo-aboutus" src="./basic/assets/img/slider/logo.png" alt="logo">
            <!--INTRODUCE-->
            <div class="introduce">
                <div class="box-introduce">
                    <figure>
                      <img src="./basic/assets/img/slider/308669811_1514054179044574_8286754678482130865_n.jpg" alt="jelly" />
                    </figure>
                    <div class="content-introduce">
                        <h3>
                            Simple Tour
                        </h3>
                        <p>
                        Founded in 2020 by four university friends in HCMUTE, Simple Tour has since become a leading VietNam accommodation search website. We are focused on reshaping the way millions of travelers search for and compare hotels and other accommodations. Part of Expedia Group (NASDAQ: TRVG), Simple Tour’s mission is to become your companion to experience our world. Find out how Simple Tour works here.
                        </p>
                    </div>
                  </div>
            </div>
            <!--END INTRODUCE-->
            
            <!--TIME LINE-->
            <div class="wrap-timeline">
                <p class="title-timeline">Our Story</p>
                <div class="timeline">
                    <ul>
                        <!--Nội dung cho timeline thứ 1-->
                        <li>
                            <div class="content-timeline">
                                <h3>Vietnam Airlines</h3>
                                <p>Officially signed a long-term contract with Vietnam Airlines - a famous airline in Vietnam to help you have many incentives as well as provide many services.</p>
                            </div>
                            <div class="time-timeline">
                                <h4>
                                    August 2020
                                </h4>
                                
                            </div>
                            <div class="img-timeline">
                                <img src="./basic/assets/img/slider/images3189314_F7B4C21F_A977_404E_AC3C_5676B797BCDB.jpeg" alt="VietnamAirline">
                            </div>
                        </li>
                        <!-- Kết thúc nội dung cho timeline thứ 1-->
                
                        <!--Nội dung cho timeline  thứ 2-->
                        <li>
                        <div class="content-timeline">
                            <h3>Foreign Tours</h3>
                            <p>The service is extended to foreign tours to help you have a rich experience</p>
                        </div>
                        <div class="time-timeline">
                            <h4>
                                February 2021
                            </h4>
                        </div>
                        <div class="img-timeline">
                            <img src="./basic/assets/img/slider/photo-1497801070587-c20425a26098.avif" alt="VietnamAirline">
                        </div>
                        </li>
                        <!-- Kết thúc nội dung cho timeline thứ 2-->
                
                        <!--Nội dung cho timeline thứ 3-->
                        <li>
                        <div class="content-timeline">
                            <h3>HomeStay</h3>
                            <p>Not only providing high-class hotel services, but also cheap homestays for students</p>
                        </div>
                        <div class="time-timeline">
                            <h4>
                                February 2021
                            </h4>
                        </div>
                        <div class="img-timeline">
                            <img src="./basic/assets/img/slider/photo-1521782462922-9318be1cfd04.avif" alt="VietnamAirline">
                        </div>
                        </li>
                        <!-- Kết thúc nội dung cho timeline thứ 3-->
                
                        <div style="clear:both"></div>
                    </ul>
                </div>
            </div>
            <!--END TIME LINE-->
            <div class="container">
                <p class="title-container">Our Staff</p>
                <div id="slide">
                    <div class="item" style="background-image: url(./basic/assets/img/nhanvien/z3877023273880_e23c3b18672c281b82f859ac03a5080c.jpg);">
                        <div class="content">
                            <div class="name">NAM NGUYỄN</div>
                            <!-- <div class="des">CHỦ TỊCH</div> -->
                        </div>
                    </div>
                    <div class="item" style="background-image: url(./basic/assets/img/nhanvien/22730173_2456496114574767_8142607230019335794_n.jpg);">
                        <div class="content">
                            <div class="name">TRỌNG NHÂN</div>
                            <!-- <div class="des">THỢ SỬA ỐNG NƯỚC</div> -->
                        </div>
                    </div>
                    <div class="item" style="background-image: url(./basic/assets/img/nhanvien/309208090_1531075900675735_9035086975391894671_n.jpg);">
                        <div class="content">
                            <div class="name">ÁNH BÙI</div>
                            <!-- <div class="des">TRƯỞNG PHÒNG Ý TƯỞNG</div> -->
                        </div>
                    </div>
                    <div class="item" style="background-image: url(https://iili.io/H2dTNYF.md.png);">
                        <div class="content">
                            <div class="name">TÒN BÁO</div>
                            <!-- <div class="des">TRƯỞNG PHÒNG BÁO</div> -->
                        </div>
                    </div>
                    <div class="item" style="background-image: url(./basic/assets/img/nhanvien/309154048_1703767943342134_4360835571104379588_n.jpg);">
                        <div class="content">
                            <div class="name">ĐỘI NGŨ NHÂN VIÊN</div>
                            <!-- <div class="des">Tinh ru anh di chay pho, chua kip chay pho thi anhchay mat tieu</div> -->
                        </div>
                    </div>
                    <div class="item" style="background-image: url(./basic/assets/img/nhanvien/309154048_1703767943342134_4360835571104379588_n.jpg);">
                        <div class="content">
                            <div class="name">ĐỘI NGŨ NHÂN VIÊN</div>
                            <!-- <div class="des">Tinh ru anh di chay pho, chua kip chay pho thi anhchay mat tieu</div> -->
                        </div>
                    </div>
                </div>
                <div class="buttons">
                    <button id="prev"><i class="fa fa-angle-left"></i></button>
                    <button id="next"><i class="fa fa-angle-right"></i></button>
                </div>
            </div>
            <div class="map-container">
                <div class="container-title">
                    <h1 class="map-title">
                        Contact
                    </h1>
                </div>
                <div class="container-content">
                    <div class="container-map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4842318818305!2d106.76972825011624!3d10.850726660747597!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752763f23816ab%3A0x282f711441b6916f!2sHCMC%20University%20of%20Technology%20and%20Education!5e0!3m2!1sen!2s!4v1670058499360!5m2!1sen!2s" width="390" height="320" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                    <div class="container-contact">
                        <div class="contact-title">
                            <h1>Social</h1>
                        </div>
                        
                            <div class="wrap-social">
                                <a class="social-link" href="https://www.facebook.com/profile.php?id=100088169090483">
                                    <div class="icon-facebook">
                                        <i class="fa fa-facebook-square"></i>
                                       <span>Facebook Page</span>
                                    </div>        
                                </a>
                            </div>

                            <div class="wrap-social">
                                <a class="social-link" href="https://www.facebook.com/groups/2112983822422413">
                                    <div class="icon-facebook">
                                        <i class="fa fa-facebook-square"></i>
                                       <span>Facebook Group</span>
                                    </div>        
                                </a>
                            </div>
                       

                    </div>
                </div>
            </div>
            <%-- <%@include file="/views/cart.jsp" %> --%>
        </div>
		<%@include file="/common/web/footer.jsp" %>
    </div>
    <script src="./basic/javascript/about.js"></script>
</body>
</html>