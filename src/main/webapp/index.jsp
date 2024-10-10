<%@ page import="org.example.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="x-ua-compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="description" content="" />
  <meta name="keyword" content="" />
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
<%@include file="pages/header.jsp"%>


<main class="nxl-container">
  <div class="nxl-content">
    <div class="main-content">
      <div class="row">
        <div class="col-lg-12">
            <div class="tab-content">
              <h1 style="margin: 2px">Welcome <%= loggedUser.getUsername() %> to DevSync</h1>

              <h2 style="margin: 2px">Task Management Platform</h2>
              <div class="navigation">
                <ul>
                  <li><a href="user-form.jsp">Add User</a></li>
                  <li><a href="users?action=list">View Users</a></li>
                </ul>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</main>







<script src="assets/vendors/js/vendors.min.js"></script>
<script src="assets/vendors/js/daterangepicker.min.js"></script>
<script src="assets/vendors/js/apexcharts.min.js"></script>
<script src="assets/vendors/js/circle-progress.min.js"></script>
<script src="assets/js/common-init.min.js"></script>
<script src="assets/js/dashboard-init.min.js"></script>
<script src="assets/js/theme-customizer-init.min.js"></script>
</body>

</html>