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
        <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./basic/assets/css/reset.css">
        <link rel="stylesheet" href="./basic/font2022.css">
        <link rel="stylesheet" href="./basic/assets/css/tourv4.css">
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
        <!-- <link rel="manifest" href="/manifest.json"> -->
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
    </head>
    <body>
        <div id="main">
           <%@include file="/common/web/header.jsp" %>
            <div class="wrap-content">
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
                    <div class="wrap-tour">
                        <div class="tour">
                            <img class="img-tour" src="${tourDetail.pathPhotoTour}" alt="">
                            <div class="content-tour">
                                <div class="introduce-tour">
                                    <h1>${tourDetail.titleTour}</h1>
                                    <br>
                                    <br>
                                    <h2>Tour Introduce</h2>
                                    <br>
                                    <h3 class="tour-date"><i class="fa fa-clock-o"></i> ${tourDetail.travelTime} days</h3>
                                    <br>
                                    <h3 class="tour-date-detail">
                                        <i class="fa fa-calendar-o"></i> 
                                        Start: <%-- ${t.dateStart} --%><fmt:formatDate pattern = "dd/MM" value = "${tourDetail.dateStart}" />
                                        End: <%-- ${t.dateEnd} --%><fmt:formatDate pattern = "dd/MM" value = "${tourDetail.dateEnd}" />                                            
                                    </h3>
                                    <br>
                                    <h3 class="tour-position">
                                        <i class="fa fa-map-marker"></i> 
                                        Starting Gate: ${tourDetail.startingGate}                                                   
                                    </h3>
                                    
                                </div>
                                <br><br>
                                <div>
                                    <h2>Tour Description</h2>
                                    <br>
                                    <p style="padding-right: 20px;">${tourDetail.contentTour}</p>
                                </div>
                                <br><br>
                                <div class="schedule-tour">
                                    <h2>Tour schedule</h2>
                                    <br>
                                    ${tourDetail.scheduleTour}
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--product -->
                    <!--Offer tour-->
                    
                    <div class="wrap-offer-tour">
                    	
                        <div class="content-offer-tour">
                            <div class="content-offer-tour-container">
                                <h2 class="text-heading">Recommended Tours</h2>
                            </div>
                        </div>
                        
                        <!-- WRAP THE TOUR -->
                        <div class="sub-tour">
                            
                            <c:forEach items="${list3tour}" var ="t">
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
                    
                    <!--End offer tour-->
                </div>
                <aside>
                    <div class="wrap-book">
                        <div class="book">
                            <h2 class="title-tour">${tourDetail.titleTour}</h2>
                            <hr>
                            <h2 class="seat">Seats: ${tourDetail.stockSeat}/${tourDetail.maxSeat}</h2>
                            <hr>
                            <h2 class="price-tour">Price: <span><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${tourDetail.salePrice}" /> </span>VND</h2>
                            <hr>
                            <c:if test="${sessionScope.account.avatarAccount!=null}">
                            <form action="addtocart?idTour=${tourDetail.idTour}">
                            <c:url value="/addtocart?idTour=${tourDetail.idTour}" var="addtocart"></c:url>
                            <%-- <input type="hidden" name="quantity" value="${1}" /> --%>
                            <input type="hidden" name="idTour" value="${tourDetail.idTour}" />
                            <a href="${addtocart}"><button class="btn-cart">Add to cart</button></a>
                            
                            </form>
                            <c:if test="${messageFailed!=null}">
                            	<script>
    								alert('Add Tour Failed');
  								</script>
                            </c:if>
                            </c:if>
                        </div>
                    </div>
            
                </aside>
                <%-- <%@ include file="/views/cart.jsp" %> --%>
            </div>
            

            <%@ include file="/common/web/footer.jsp" %>
            
        </div>
    </body>
</html>