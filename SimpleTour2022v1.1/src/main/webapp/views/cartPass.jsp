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
    <!-- <link rel="stylesheet" href="/font.css"> -->
    <link rel="stylesheet" href="./basic/assets/css/cartPass.css">
    <link rel="stylesheet" href="./basic/assets/css/logoutButton.css"> 
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
                
            <section class="cart">
                <h2>Your Cart</h2>
                <form action="pay">
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Tour Name</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Choose</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach items="${sessionScope.cart}" var="entry">
                            <tr>
                                <td>${entry.key}</td>
                                <td> <img src="${entry.value.tour.pathPhotoTour }" alt=""> ${entry.value.tour.titleTour }</td>
                                <td><p><span><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${entry.value.unitPrice}" /></span></p></td>
                                <td><input style="width: 70px;outline:none;" type="number" value="${entry.value.quantity}" size="100" /></td>
                                <td style="cursor: pointer;"><a href="${pageContext.request.contextPath}/deletefromcart?key=${entry.key}"><i class="fa fa-trash"></i></a></td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <div style="text-align: right;" class="price-total">
                        <p style="font-weight: bold;">Total Price: <span class="total_price_usd">${sessionScope.totalprice}</span>USD</p>
                    </div>
                    <input type="hidden" name="total-price" value="${sessionScope.totalprice}" />
                    <a href="pay"><button class="btn-pay">Pay</button></a>
                </form>
            </section>
        </div>

        
        
    </div>
    <%@include file="/common/web/footer.jsp" %>
    </div>
    <script src="./basic/javascript/tour.js"></script>
</body>
</html>