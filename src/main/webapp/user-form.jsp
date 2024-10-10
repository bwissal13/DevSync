<%@ page import="org.example.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zxx">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="WRAPCODERS" />
    <title>DevSync</title>
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/d.png" />
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/vendors/css/vendors.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/vendors/css/daterangepicker.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/theme.min.css" />
    <!--[if lt IE 9]>
    <script src="https:oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https:oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<%
    User loggedUser = (User) session.getAttribute("user");
    if (loggedUser == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<body>
<%@include file="pages/header.jsp" %>

<main class="nxl-container">
    <div class="nxl-content">
        <div class="main-content">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card border-top-0">
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="profileTab" role="tabpanel">
                                <form action="users" method="post" class="card-body personal-info">
                                    <input type="hidden" name="id" value="${user != null ? user.id : ''}">

                                    <div class="mb-4 d-flex align-items-center justify-content-between">
                                        <h5 class="fw-bold mb-0 me-4">
                                            <span class="d-block mb-2">${user == null ? 'Create' : 'Edit'} User</span>
                                            <span class="fs-12 fw-normal text-muted text-truncate-1-line">Following information is publicly displayed, be careful!</span>
                                        </h5>
                                        <button type="submit" class="btn btn-sm btn-light-brand">${user == null ? 'Create' : 'Update'}</button>
                                    </div>

                                    <div class="row mb-4 align-items-center">
                                        <div class="col-lg-4">
                                            <label for="usernameInput" class="fw-semibold">Username: </label>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="input-group">
                                                <div class="input-group-text"><i class="feather-link-2"></i></div>
                                                <input type="text" class="form-control" id="usernameInput" name="username" placeholder="Username" value="${user != null ? user.username : ''}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mb-4 align-items-center">
                                        <div class="col-lg-4">
                                            <label for="passwordInput" class="fw-semibold">Password: </label>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="input-group">
                                                <div class="input-group-text"><i class="feather-lock"></i></div>
                                                <input type="password" class="form-control" id="passwordInput" name="password" placeholder="Password" value="${user != null ? user.password : ''}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mb-4 align-items-center">
                                        <div class="col-lg-4">
                                            <label for="firstNameInput" class="fw-semibold">First Name: </label>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="input-group">
                                                <div class="input-group-text"><i class="feather-user"></i></div>
                                                <input type="text" class="form-control" id="firstNameInput" name="firstName" placeholder="First Name" value="${user != null ? user.firstName : ''}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mb-4 align-items-center">
                                        <div class="col-lg-4">
                                            <label for="lastNameInput" class="fw-semibold">Last Name: </label>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="input-group">
                                                <div class="input-group-text"><i class="feather-user"></i></div>
                                                <input type="text" class="form-control" id="lastNameInput" name="lastName" placeholder="Last Name" value="${user != null ? user.lastName : ''}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mb-4 align-items-center">
                                        <div class="col-lg-4">
                                            <label for="mailInput" class="fw-semibold">Email: </label>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="input-group">
                                                <div class="input-group-text"><i class="feather-mail"></i></div>
                                                <input type="email" class="form-control" id="mailInput" name="email" placeholder="Email" value="${user != null ? user.email : ''}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mb-4 align-items-center">
                                        <div class="col-lg-4">
                                            <label for="managerInput" class="fw-semibold">Manager: </label>
                                        </div>
                                        <div class="col-lg-8">
                                            <input type="hidden" name="manager" value="false">
                                            <input type="checkbox" id="managerInput" name="manager" value="true"
                                            ${user != null && user.isManager() ? 'checked' : ''}>
                                        </div>
                                    </div>
                                </form>
                                <hr class="my-0">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="pages/footer.jsp" %>
</main>

<!--! BEGIN: Vendors JS !-->
<script src="assets/vendors/js/vendors.min.js"></script>
<script src="assets/vendors/js/select2.min.js"></script>
<script src="assets/vendors/js/select2-active.min.js"></script>
<script src="assets/vendors/js/datepicker.min.js"></script>
<script src="assets/vendors/js/lslstrength.min.js"></script>
<!--! END: Vendors JS !-->
<!--! BEGIN: Apps Init  !-->
<script src="assets/js/common-init.min.js"></script>
<script src="assets/js/customers-create-init.min.js"></script>
<!--! END: Apps Init !-->
<!--! BEGIN: Theme Customizer  !-->
<script src="assets/js/theme-customizer-init.min.js"></script>
<!--! END: Theme Customizer !-->
</body>
</html>
