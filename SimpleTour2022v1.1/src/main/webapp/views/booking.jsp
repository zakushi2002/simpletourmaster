<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking</title>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="./basic/assets/css/reset.css"/>">
    <link rel="stylesheet" href="<c:url value="./basic/assets/css/bookingv1.css"/>">
    <link rel="stylesheet" href="./basic/assets/css/logoutButton.css">
    <link rel="stylesheet" href="./basic/assets/css/cartv1.css">
    <link rel="stylesheet" href="./basic/font2022.css">
    <link rel="stylesheet" href="https://cdn.leanhduc.pro.vn/utilities/animation/shake-effect/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="apple-touch-icon" sizes="57x57" href="<c:url value="./basic/assets/img/favicon/apple-icon-57x57.png"/>">
    <link rel="apple-touch-icon" sizes="60x60" href="<c:url value="./basic/assets/img/favicon/apple-icon-60x60.png"/>">
    <link rel="apple-touch-icon" sizes="72x72" href="<c:url value="./basic/assets/img/favicon/apple-icon-72x72.png"/>">
    <link rel="apple-touch-icon" sizes="76x76" href="<c:url value="./basic/assets/img/favicon/apple-icon-76x76.png"/>">
    <link rel="apple-touch-icon" sizes="114x114" href="<c:url value="./basic/assets/img/favicon/apple-icon-114x114.png"/>">
    <link rel="apple-touch-icon" sizes="120x120" href="<c:url value="./basic/assets/img/favicon/apple-icon-120x120.png"/>">
    <link rel="apple-touch-icon" sizes="144x144" href="<c:url value="./basic/assets/img/favicon/apple-icon-144x144.png"/>">
    <link rel="apple-touch-icon" sizes="152x152" href="<c:url value="./basic/assets/img/favicon/apple-icon-152x152.png"/>">
    <link rel="apple-touch-icon" sizes="180x180" href="<c:url value="./basic/assets/img/favicon/apple-icon-180x180.png"/>">
    <link rel="icon" type="image/png" sizes="192x192"  href="<c:url value="./basic/assets/img/favicon/android-icon-192x192.png"/>">
    <link rel="icon" type="image/png" sizes="32x32" href="<c:url value="./basic/assets/img/favicon/favicon-32x32.png"/>">
    <link rel="icon" type="image/png" sizes="96x96" href="<c:url value="./basic/assets/img/favicon/favicon-96x96.png"/>">
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value="./basic/assets/img/favicon/favicon-16x16.png"/>">
    <link rel="manifest" href="<c:url value="./basic/manifest.json"/>">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
</head>
<body>
    <div id="main">
        <!-- HEADER -->
        <jsp:include page="/common/web/header.jsp" />
        <!-- END HEADER -->

        <!--SLIDESHOW -->
        <div id="slideshow"> 
            <div class="slideshow-item">
                <img src="./basic/assets/img/booking/maldivehd.jpg" alt="canhdepVN">
            </div>
        </div>
        <!-- END SLIDESHOW -->

        <!-- RELATIVE -->
        <div id="relative">
             <!-- Begin: Tab Content Search Tour -->
             <div class="wrapper">
                <div class="tab-content">
                    <div class="wrap-tab-container">
                        <div class="tab-container">
                            <label for="#">Starting</label>
                            <div class="form-field">
                                <div class="icon"><span class="fa fa-search"></span></div>
                                <select class="form-control" id="city_1" aria-label=".selected">
                                <option value="" selected>Choose city</option>
                                </select>
                            </div>
                        </div>

                        <div class="tab-container">
                            <label for="#">Destination</label>
                            <div class="form-field">
                                <div class="icon"><span class="fa fa-search"></span></div>
                                <select class="form-control" id="city_2" aria-label=".selected">
                                <option value=""  selected>Choose City</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="tab-container">
                            <label for="#">Check-in date</label>
                            <div class="form-field">
                                <div class="icon"><span class="fa fa-calendar"></span></div>
                                <input type="date" id="today" class="form-control checkin_date" placeholder="Check In Date">
                            </div>
                        </div>

                        <div class="tab-container">
                            <label for="#">Days to go</label>
                            <div class="form-field">
                                <div class="icon"><span class="fa fa-calendar"></span></div>
                                <select name="" id="" class="form-control">
                                    <option value="">1 day</option>
                                    <option value="">2 days</option>
                                    <option value="">3 days</option>
                                    <option value="">4 days</option>
                                </select>
                            </div>
                        </div>

                        <div class="tab-container">
                            <label for="#">Price Limit</label>
                            <div class="form-field">
                                <div class="select-wrap">
                                    <div class="icon"><span class="fa fa-credit-card"></span></div>
                                    <select name="" id="" class="form-control">
                                        <option value="">500.000 - 1.000.000</option>
                                        <option value="">1.000.000 - 2.000.000</option>
                                        <option value="">2.000.000 - 3.000.000</option>
                                        <option value="">3.000.000 - 4.000.000</option>
                                        <option value="">4.000.000 - 5.000.000</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="tab-container" >
                            <div class="form-field ">
                                <!-- nut search tour -->
                                <a><button class="search-tour-btn">Search</button></a>
                            </div>
                        </div>
                    </div>
                </div>              
            </div>
            <!-- End: Tab Content Search Tour -->

        </div>
        <!-- END REALTIVE -->

            <!-- CONTENT -->                     
        <div id="content"> 
            <!-- ICON SOCIAL CONTACT -->
            <div id="contact">     
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
            </div>      
            <!-- END ICON SOCIAL CONTACT -->  

            <!-- Tour -->
            <section class="offer-tour">
                <!-- TOUR SALE -->
                <div class="wrap-offer-tour-sale">
                    <div class="content-offer-tour">
                        <div class="content-offer-tour-container">
                            <h2 class="text-heading">Sale Tour</h2>
                        </div>
                    </div>
                    <!-- WRAP THE TOUR -->
                    <div class="sub-tour">
                        
                        <c:forEach items="${listSale}" var ="t">
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
                </div>
                <!-- END TOUR SALE -->

                <!-- TOUR RECENT -->
                <div class="wrap-offer-tour">
                    <div class="content-offer-tour">
                        <div class="content-offer-tour-container">
                            <h2 class="text-heading">Tour</h2>
                        </div>
                    </div>
                    <!-- WRAP THE TOUR -->
                    <div class="sub-tour">
                        <c:forEach items="${listPaging}" var ="t">
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
                </div>
                <!-- END RECENT TOUR -->

            </section>
        <!-- PAGE NUMBER -->
        <div class="wrap-pagination">
            <div class="pagination">
           		<c:if test="${tag>1}">
                    <a class="prev" href="booking?indexPage=${tag-1}" tabindex="-1">&lt;</a>
                    </c:if>
                    <!-- <a class="page-number active" href="#">1</a> -->
                    <c:forEach begin="1" end="${endPage}" var ="i">
                    <a class="page-number ${tag==i ? "active":""}" href="booking?indexPage=${i}">${i}</a>
                    </c:forEach>
                    <c:if test="${tag<endPage}">
                    <a class="next" href="booking?indexPage=${tag+1}">&gt;</a>
               	</c:if>
            </div>
        </div>
       
        <!-- END PAGE NUMBER -->
            <%-- <%@include file="/views/cart.jsp" %> --%>
        </div>    
        <!-- END CONTENT -->

        
        <jsp:include page="/common/web/footer.jsp" />    
    </div>    
    <script src="./basic/javascript/bookingv1.js"></script>
</body>
</html>