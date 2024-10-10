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
<body>

<main class="auth-minimal-wrapper">
  <div class="auth-minimal-inner">
    <div class="minimal-card-wrapper">
      <div class="card mb-4 mt-5 mx-4 mx-sm-0 position-relative">
        <div class="wd-50 bg-white p-2 rounded-circle shadow-lg position-absolute translate-middle top-0 start-50">
          <img src="assets/images/d.png" alt="" class="img-fluid">
        </div>
        <div class="card-body p-sm-5">
          <h2 class="fs-20 fw-bolder mb-4">Login</h2>
          <h4 class="fs-13 fw-bold mb-2">Login to your account</h4>
          <p class="fs-12 fw-medium text-muted">Thank you for get back <strong>DevSync</strong> web applications, let's access our the best recommendation for you.</p>

          <!-- Display error message if login fails -->
          <c:if test="${not empty errorMessage}">
            <div class="error">${errorMessage}</div>
          </c:if>

          <form action="login" method="POST" class="w-100 mt-4 pt-2">
            <div class="mb-4">
              <input type="email" class="form-control" placeholder="Email " name="email" required>
            </div>
            <div class="mb-3">
              <input type="password" class="form-control" placeholder="Password" name="password" required>
            </div>

            <div class="mt-5">
              <button type="submit" class="btn btn-lg btn-primary w-100">Login</button>
            </div>
          </form>

        </div>
      </div>
    </div>
  </div>
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
