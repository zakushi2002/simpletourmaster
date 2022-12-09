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
                        <h3 class="page-title mb-0 p-0">Create New Tour</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Admin</a></li>
                                    <li class="breadcrumb-item active" aria-current="page"><a href="${pageContext.request.contextPath}/admin/tourtable">Tour Table</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Create New Tour</li>
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
                                <section>
        <!--Bắt Đầu Phần Nội Dung-->
        <div class="content">
            <div class="form">
                <h1 class="title-page">Create New Tour</h1>
                <form class="createAdmin" action="createnewtour" method="post" name="form" >
                    <div class="input-form">
                        <span>Title</span>
                        <input type="text" name="titleTour">
                    </div>
                    <div class="input-form ">
                        <span>Category ID</span>
                        <input  type="text" name="categoryID">
                    </div>
                    <div class="input-form">
                        <span>Content</span>
                        <input type="text" name="contentTour">
                    </div>
                    <div class="input-form">
                        <span>Schedule</span>
                        <input type="text" name="scheduleTour">
                    </div>
                    <div class="input-form">
                        <span>Price</span>
                        <input type="number" name="priceTour">
                    </div>
                    <div class="input-form">
                        <span>Date Start</span>
                        <input type="date" name="dateStart">
                    </div>
                    <div class="input-form">
                        <span>Date End</span>
                        <input type="date" name="dateEnd">
                    </div>
                    <div class="input-form">
                        <span>Max Seat</span>
                        <input type="number" name="maxSeat">
                    </div>
                    <div class="input-form">
                        <span>Starting Gate</span>
                        <input type="text" name="startingGate">
                    </div>
                    <div class="input-form">
                        <span>Path Photo Tour</span>
                        <input type="text" name="pathPhotoTour">
                    </div>
                    <div class="input-form">
                        <span>Sale Off</span>
                        <input type="number" name="saleOff">
                    </div>
                    <div class="input-form-radio">
                        <span>Status</span>
                        <input type="radio" id="statusChoice1" name="statusTour" value="1" />
                        <label for="statusChoice1">Active</label>

                        <input type="radio" id="statusChoice2" name="statusTour" value="0" />
                        <label for="statusChoice2">Locked</label>
                    </div>
                    <br>
                    <div class="input-form">
                        <input  type="submit" value="Submit">
                    </div>
                </form>
            </div>
        </div>
        <!--Kết Thúc Phần Nội Dung-->
    </section>
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