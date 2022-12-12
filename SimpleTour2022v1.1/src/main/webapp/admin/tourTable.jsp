<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
    	<jsp:include page="headerAdmin.jsp" />
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-md-6 col-8 align-self-center">
                        <h3 class="page-title mb-0 p-0">Tour Table</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Admin</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Tour Table</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- column -->
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"><a href ="createnewtour">Insert Tour</a></h4>
                                <!-- <h6 class="card-subtitle">Add class <code>.table</code></h6> -->
                                <div class="table-responsive">
                                    <table class="table user-table no-wrap">
                                        <thead>
                                            <tr>
                                                <th class="border-top-0">Title</th>
                                                <th class="border-top-0">Category</th>
                                                <th class="border-top-0">Price</th>
                                                <th class="border-top-0">Sale</th>
                                                <th class="border-top-0">Travel Time</th>
                                                <th class="border-top-0">Amount</th>
                                                <th class="border-top-0">Starting Gate</th>
                                                <th class="border-top-0">Status</th>
                                                <th class="border-top-0">Options</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${listTour}" var ="t">
                                            <tr>
                                                <td>${t.titleTour}</td>
                                                <td>
                                                <c:forEach items="${listCategory}" var="cate">
                                                	<c:if test="${t.categoryID == cate.categoryID}">
                                                		${cate.categoryName}
                                                	</c:if>
                                                </c:forEach>
                                                </td>
                                                <td><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${t.priceTour}" /></td>
                                                <td><fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${t.saleOff}" />%</td>
                                                <td>${t.travelTime}</td>
                                                <td>${t.amount}</td>
                                                <td>${t.startingGate}</td>
                                            	<td>                                            		
	                                                <c:choose>
	                                                <c:when test="${t.statusTour == 1}">Active</c:when>
	                                                <c:otherwise>Locked</c:otherwise>
	                                                </c:choose>
                                                </td><%-- ?idTour=${t.idTour} --%>
                                                <td><a href="edittour?idTour=${t.idTour}"><input name="idToEdit" type="hidden" value="${t.idTour}"><button>Edit</button></a> 
                                                <form action="deletetour" method="post"><input name="idToDelete" type="hidden" value="${t.idTour}"><button>Delete</button></form></td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <jsp:include page="footer.jsp" />
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
</body>