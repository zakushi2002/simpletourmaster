<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<div id="header">
            <!-- Begin: Nav -->
            <div id="wrap-nav">
                <ul id="nav">
                    <li><a href="home">Home</a></li>
                    <li><a href="about">About</a></li>
                    <li>
                        <a href="booking">Booking</a>
                    </li>
                    <li><a href="policy">Policy</a></li>
                    <li>
                        <a href="blog">
                            Blog
                            <!-- dùng thẻ i để để icon -->
                            <i class="nav-arrow-down ti-angle-down"></i>
                        </a>
                        <!-- <ul class="subnav">
                            <li><a href="">Food</a></li>
                            <li><a href="">Destination</a></li>
                            <li><a href="">Weather</a></li>
                        </ul> -->
                    </li>                   
                </ul>
                
                <c:choose>
                	<c:when test="${sessionScope.account == null}">
                		<a href="${pageContext.request.contextPath}/login">
		                    <div class="wrap-login-btn">
		                        <button class="login-btn">Log In</button>
		                    </div>
                		</a>
                	</c:when>
                	<c:otherwise>
                		<%-- <p>${sessionScope.account.nameAccount} | </p> --%>
                		<%-- <a href="${pageContext.request.contextPath}/logout">
		                    <div class="wrap-login-btn">
		                        <button class="login-btn">Log Out</button>
		                    </div>
                		</a> --%>
                	<div class="wrap-logout-btn">
                		<c:choose>
                        <c:when test="${sessionScope.account.avatarAccount==null}">
	               		<img src="./basic/assets/cmt/user.png" alt="User" onclick="toggleMenu()">
	               		</c:when>
	               		<c:otherwise>
	               		<img src="${sessionScope.account.avatarAccount}" alt="User" onclick="toggleMenu()">
	               		</c:otherwise>
                        </c:choose>
	                    <div class="sub-menu-wrap" id="subMenu">
              	    		<div class="sub-menu">
                        		<a href="${pageContext.request.contextPath}/myaccount">
                        		<div class="user-info">
                        			<c:choose>
                        			<c:when test="${sessionScope.account.avatarAccount==null}">
                            			<img src="./basic/assets/cmt/user.png" alt="User">
                            		</c:when>
                            		<c:otherwise>
                            			<img src="${sessionScope.account.avatarAccount}" alt="User">
                            		</c:otherwise>
                            		</c:choose>
                                	<h2>${sessionScope.account.nameAccount}</h2>
                            	</div>
                            	</a>
                            	<hr>

                            	<a href="${pageContext.request.contextPath}/logout" class="sub-menu-link">
                            		<img src="./basic/assets/cmt/logout.png" alt="">
                                	<p>Logout</p>
                                	<span>></span>
                            	</a>
                        	</div>
                    	</div>
                	</div>
                	<div class="cart-icon">
                        <p style="display: flex;justify-content: space-between;">
                        	<a href="${pageContext.request.contextPath}/cart" style="text-decoration: none;"><i class="fa fa-shopping-cart "></i></a>
                        	<c:if test="${cart != null}"><span style="margin-left: 5px;font-size: 12px;font-style: italic;font-weight: bold;"><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${ cart.getInt(cart.getTotal())}" />VND</span></c:if>
                        </p>
                    </div>
                	</c:otherwise>
                </c:choose>
                
            </div>
            <!-- End: Nav -->
            <script src="./basic/javascript/myaccount.js"></script>
</div>