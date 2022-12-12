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
                        <h3 class="page-title mb-0 p-0">Edit Account</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Admin</a></li>
                                    <li class="breadcrumb-item active" aria-current="page"><a href="${pageContext.request.contextPath}/admin/accounttable">Account Table</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Edit Account</li>
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
                <h1 class="title-page">Edit Account</h1>
                <form class="createAdmin" action="editaccount?phoneAccount=${accountDetail.phoneAccount}" method="post" name="form" >
                    <c:if test="${alert != null}"><h3>${alert}</h3></c:if>
                    <div class="input-form ">
                        <span>Phone</span>
                        <p>${accountDetail.phoneAccount}</p>
                    </div>
                    <div class="input-form">
                        <span>Password</span>
                        <input type="password" name="passwordAccount" value="${accountDetail.passwordAccount}"  >
                    </div>
                    <div class="input-form">
                        <span>Email</span>
                        <input type="email" name="emailAccount" value="${accountDetail.emailAccount}">
                    </div>
                    <div class="input-form">
                        <span>Name</span>
                        <input type="text" name="nameAccount" value="${accountDetail.nameAccount}">
                    </div>
                    <div class="input-form">
                        <span>Link Avatar</span>
                        <input type="text" name="avatarAccount" value="${accountDetail.avatarAccount}">
                    </div>
                    <div class="input-form-radio">
                    	<span>Role</span>
                    	<c:choose>
                    	<c:when test="${accountDetail.roleAccount==1}">
                        
                        <input type="radio" id="roleChoice1" name="roleAccount" value="1" checked/>
                        <label for="roleChoice1">Admin</label>

                        <input type="radio" id="roleChoice2" name="roleAccount" value="0" />
                        <label for="roleChoice2">User</label>
						</c:when>
                        <c:otherwise>
                        <input type="radio" id="roleChoice1" name="roleAccount" value="1" />
                        <label for="roleChoice1">Admin</label>

                        <input type="radio" id="roleChoice2" name="roleAccount" value="0" checked/>
                        <label for="roleChoice2">User</label>
                        </c:otherwise>
                        </c:choose>
                    </div>
                    <br>
                    <div class="input-form-radio">
                        <span>Status</span>
                        <c:choose>
                    	<c:when test="${accountDetail.statusAccount==1}">
                        <input type="radio" id="statusChoice1" name="statusAccount" value="1" checked/>
                        <label for="statusChoice1">Active</label>

                        <input type="radio" id="statusChoice2" name="statusAccount" value="0" />
                        <label for="statusChoice2">Locked</label>
                        </c:when>
                        <c:otherwise>
                        <input type="radio" id="statusChoice1" name="statusAccount" value="1" />
                        <label for="statusChoice1">Active</label>

                        <input type="radio" id="statusChoice2" name="statusAccount" value="0" checked/>
                        <label for="statusChoice2">Locked</label>
                        </c:otherwise>
                        </c:choose>
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