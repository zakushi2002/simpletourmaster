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
    <link rel="stylesheet" href="./basic/assets/css/homev4.css">
    <link rel="stylesheet" href="./basic/assets/css/logoutButton.css">
    <link rel="stylesheet" href="./basic/assets/css/cartv1.css">
    <link rel="stylesheet" href="https://cdn.leanhduc.pro.vn/utilities/animation/shake-effect/style.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    <link rel="icon" type="image/png" sizes="192x192"  href="./basic/assets/img/favicon/android-icon-192x192.png">
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
        <div class="slideshow">
            <div class="overlay"></div>
            <div class="slideshow-item">
                <img src="https://images.pexels.com/photos/3155666/pexels-photo-3155666.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="ảnh back-ground">
            </div>
            <!-- <div class="slideshow-item">
                <img src="https://images.pexels.com/photos/402028/pexels-photo-402028.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" alt="ảnh back-ground">
            </div> -->
            <!-- <div class="slideshow-item">
                <img src="https://images.pexels.com/photos/2325446/pexels-photo-2325446.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="ảnh back-ground">
            </div> -->
            <!-- <div class="text-content">
                <div class="text-heading">Welcome to Simple Tour</div>
                <h1 class="text-decription">Discover Your Favorite Place with Us</h1>
                
                
				<a class="booking-bt" href="./booking.html" ><span class="book-bt">Booking Now</span></a>
				
            </div>  -->
            <div id="banner">
                <div class="box-left">
                    <h2>
                        <span>SIMPLE TOUR</span>
                        <br>
                        <!-- <span>VIP</span> -->
                    </h2>
                    <!-- <p>Specializes in providing the best travel with many utilities to users, serving users in the most perfect way.</p> -->
                    <a href="booking"><button>BOOK NOW</button></a>
                </div>
                <div class="box-right">
                    <img src="./basic/assets/cmt/img_1.png" alt="">
                    <img src="./basic/assets/cmt/img_2.png" alt="">
                    <img src="./basic/assets/cmt/img_3.png" alt="">

                </div>
                
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
            
            <!--Blog-->
            <section class="offer-blog">
                <div class="wrap-offer-blog">
                    <div class="content-offer-blog">
                        <div class="content-offer-blog-container">
                            <span class="subheading">Our Blog</span>
                            <h2 class="text-heading">Recent Post</h2>
                        </div>
                    </div>
                    <div class="blog-container">
                        <div class="item-1">
                          <a href="pageblog?indexPageBlog=1" class="card1">
                            <div class="thumb" style="background-image: url(./basic/assets/img/booking/dalat.jpg);"></div>
                            <!--article là phần tử để bao bọc nội dung độc lập, nó có thể là một bài post của diễn đàn, một bài viết của trang, một bài báo, một bình luận ... hoặc bất kỳ một nội dung độc lập nào.-->
                            <article>
                              <h1>Top 5 outstanding tourist attractions in Dalat</h1>
                              <span class="date-submitted">20-10-2022</span>
                              
                            </article>
                          </a>
                        </div>
                        <div class="item-2">
                          <a href="pageblog?indexPageBlog=2" class="card1">
                            <div class="thumb" style="background-image: url(./basic/assets/img/booking/dalat.jpg);"></div>
                            <article>
                              <h1>TOP 7 Da Lat specialties and delicious</h1>
                              <span class="date-submitted">20-10-2022</span>
                              
                            </article>
                          </a>
                        </div>
                        <div class="item-3">
                          <a href="pageblog?indexPageBlog=3" class="card1">
                            <div class="thumb" style="background-image: url(./basic/assets/img/booking/bienNhaTrang.jpg);"></div>
                            <article>
                              <h1>Top 5 famous beautiful Nha Trang tourist attractions</h1>
                              <p>Com - The beauty of Nha Trang's long-standing culinary culture </p>
                              <span class="date-submitted">20-10-2022</span>
                            </article>
                          </a>
                        </div>
                        <div class="item-4">
                          <a href="pageblog?indexPageBlog=4" class="card1">
                            <div class="thumb" style="background-image: url(./basic/assets/img/slider/mon-an-duong-pho-viet-nam-wecheckin.jpg);"></div>
                            <article>
                              <h1>Top Vietnamese food</h1>
                              <p>Not having eaten all these 5 delicious dishes in Viet Nam is considered as not worthy of the title "real god"!</p>
                              <span class="date-submitted">20-10-2022</span>
                            </article>
                          </a>
                        </div>
                        <div class="item-5">
                          <a href="pageblog?indexPageBlog=5" class="card1">
                            <div class="thumb" style="background-image: url(./basic/assets/img/slider/Blogging-1.jpg);"></div>
                            <article>
                              <h1>Top 4 most beautiful landscapes in Vietnam</h1>
                              <span class="date-submitted">20-10-2022</span>
                            </article>
                          </a>
                        </div>
                        <div class="item-6">
                          <a href="pageblog?indexPageBlog=6" class="card1">
                            <div class="thumb" style="background-image: url(./basic/assets/img/slider/kinh-nghiem-du-lich-phu-quoc-17.jpg);"></div>
                            <article>
                              <h1>Top 5 Delicacies of Phu Quoc Night Market for Foodies</h1>
                      
                              <span class="date-submitted">20-10-2022</span>
                            </article>
                          </a>
                        </div>
                      </div>
                </div>                
            </section>
            <!--End Blog-->
            
            <!-- Tour -->
            <section class="offer-tour">
                <div class="wrap-offer-tour">
                    <div class="content-offer-tour">
                        <div class="content-offer-tour-container">
                            <span class="subheading">Our Popular Tour</span>
                            <h2 class="text-heading">Recent Tour</h2>
                        </div>
                    </div>
                    <!-- WRAP THE TOUR -->
                    <div class="sub-tour">
                        
                        <c:forEach items="${listRecent}" var ="t">
                        <div  class="sub-tour-container">
                            <div class="content-sub-tour">
                                <div class="text-sub-tour">
                                    <div class="background-text-sub-tour" style="background-image: url(${t.pathPhotoTour});">
                                    	<c:if test="${t.saleOff!=0}">
                                    	<div class="sale-ribbons">
                                            <span>Sales Off</span>
                                        </div>
                                        </c:if>
                                    </div>
                                    <div class="text-overlay">
                                        <h1><a href="tourdetail?tourID=${t.idTour}">${t.titleTour}</a></h1>
                                       
                                        <h2 class="tour-date"><i class="fa fa-clock-o"></i>${t.travelTime} Days</h2>
                                        <h3 class="tour-date-detail">
                                            <i class="fa fa-calendar-o"></i> 
                                            Start: <%-- ${t.dateStart} --%><fmt:formatDate pattern = "dd/MM" value = "${t.dateStart}" />
                                            End: <%-- ${t.dateEnd} --%><fmt:formatDate pattern = "dd/MM" value = "${t.dateEnd}" />                                            
                                        </h3>
                                        <h3 class="tour-position">
                                            <span class="fa fa-map-marker"></span> 
                                            Starting Gate: ${t.startingGate}                                                   
                                        </h3>
                                        <h3 class="tour-slot">
                                            <span class="fa fa-users"></span>           
                                            Seats: ${t.stockSeat}/${t.maxSeat}               
                                        </h3>
                                    </div>
                                </div>
                                <div class="wrap-icon-holder-tour">
                                    <div class="icon-holder-tour">                                        
                                        <span class="wrap-span-icon-holder-tour">                                   
                                           	<c:choose>
                                           		<c:when test="${t.saleOff!=0}">
	                                            <i id="credit-tour" class="fa fa-credit-card"><span class="credit-tour-price"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${t.priceTour}" /> VND/Person</span><span class="sale-percents">-<fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${t.saleOff}" />%</span></i>
	                                            <i id="credit-tour-sale" class="fa "><span class="credit-tour-price-sale"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${t.salePrice}" /> VND/Person</span></i>
                                        		</c:when>
                                        		<c:otherwise>
                                        		<i id="credit-tour-sale" class="fa "><span class="credit-tour-price-sale"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${t.priceTour}" /> VND/Person</span></i>
                                        		</c:otherwise>
                                        	</c:choose>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                        
                    </div>
                    <!-- END TOUR  -->
                </div>
            </section>
            <!-- End Tour -->
            <div id="saleoff">
                <div class="box-left">
                    <h1>
                        <span>DISCOUNT UP TO</span>
                        <span>50%</span>
                    </h1>
                </div>
                <div class="box-right"><img src="./basic/assets/img/booking/dalat.jpg" alt=""></div>
            </div>
      		<%-- <%@include file="/views/cart.jsp" %> --%>
        </div>

        <%@include file="/common/web/footer.jsp" %>
    </div>
    <script>
    	
	  	//User
	    let subMenu = document.getElementById("subMenu");
	
	    function toggleMenu(){
	        subMenu.classList.toggle("open-menu");
	    }
    </script>
</body>
</html>