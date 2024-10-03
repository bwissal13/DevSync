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
<body>
<%@include file="pages/header.jsp"%>

<main class="nxl-container">
  <div class="nxl-content">
    <div class="main-content">
      <div class="row">
        <div class="col-xxl-8">
          <div class="card stretch stretch-full">
            <div class="card-header">
              <h5 class="card-title">Users</h5>
              <div class="card-header-action">
                <div class="card-header-btn">
                  <div data-bs-toggle="tooltip" title="Delete">
                    <a href="javascript:void(0);" class="avatar-text avatar-xs bg-danger" data-bs-toggle="remove"> </a>
                  </div>
                  <div data-bs-toggle="tooltip" title="Refresh">
                    <a href="javascript:void(0);" class="avatar-text avatar-xs bg-warning" data-bs-toggle="refresh"> </a>
                  </div>
                  <div data-bs-toggle="tooltip" title="Maximize/Minimize">
                    <a href="javascript:void(0);" class="avatar-text avatar-xs bg-success" data-bs-toggle="expand"> </a>
                  </div>
                </div>
                <div class="dropdown">
                  <a href="javascript:void(0);" class="avatar-text avatar-sm" data-bs-toggle="dropdown" data-bs-offset="25, 25">
                    <div data-bs-toggle="tooltip" title="Options">
                      <i class="feather-more-vertical"></i>
                    </div>
                  </a>
                  <div class="dropdown-menu dropdown-menu-end">
                    <a href="user-form.jsp" class="dropdown-item"><i class="feather-at-sign"></i>New</a>
                    <a href="javascript:void(0);" class="dropdown-item"><i class="feather-trash-2"></i>Deleted</a>

                  </div>
                </div>
              </div>
            </div>
            <div class="card-body custom-card-action p-0">
              <div class="table-responsive">
                <table class="table table-hover mb-0">
                  <thead>
                  <tr class="border-b">
                    <th scope="row">Users</th>
                    <th>Manager</th>
                    <th class="text-end">Actions</th>
                  </tr>
                  </thead> <%
                  // Récupérer la liste des utilisateurs depuis l'attribut de requête
                  List<User> users = (List<org.example.entity.User>) request.getAttribute("users");

                  // Vérifiez si la liste des utilisateurs n'est pas vide
                  if (users != null) {
                    for (org.example.entity.User user : users) {
                %>
                  <tbody>

                  <tr>
                    <td>
                      <div class="d-flex align-items-center gap-3">
                        <div class="avatar-image">
                          <img src="assets/images/avatar/2.png" alt="" class="img-fluid" />
                        </div>
                        <a href="javascript:void(0);">
                          <span class="d-block"><%= user.getUsername() %></span>
                          <span class="fs-12 d-block fw-normal text-muted"><%= user.getEmail() %></span>
                        </a>
                      </div>
                    </td>
                    <td>
                      <span class="badge bg-soft-success text-success"><%= user.isManager() %></span>
                    </td>
                    <td class="dropdown">

                      <a href="javascript:void(0);" class="avatar-text avatar-sm" data-bs-toggle="dropdown" data-bs-offset="25, 25">
                        <div data-bs-toggle="tooltip" title="Options">
                          <i class="feather-more-vertical"></i>
                        </div>
                      </a>
                      <div class="dropdown-menu dropdown-menu-end">
                        <a href="users?action=edit&id=<%= user.getId() %>" class="dropdown-item"><i class="feather-at-sign"></i>Edit</a>
                        <a href="users?action=delete&id=<%= user.getId() %>" class="dropdown-item"><i class="feather-trash-2"></i>Delete</a>

                      </div>
                    </td>
                  </tr>
                  </tbody>
                  <%
                  }
                  }
                %>
                </table>
              </div>
            </div>
            <div class="card-footer">
              <ul class="list-unstyled d-flex align-items-center gap-2 mb-0 pagination-common-style">
                <li>
                  <a href="javascript:void(0);"><i class="bi bi-arrow-left"></i></a>
                </li>
                <li><a href="javascript:void(0);" class="active">1</a></li>
                <li><a href="javascript:void(0);">2</a></li>
                <li>
                  <a href="javascript:void(0);"><i class="bi bi-dot"></i></a>
                </li>
                <li><a href="javascript:void(0);">8</a></li>
                <li><a href="javascript:void(0);">9</a></li>
                <li>
                  <a href="javascript:void(0);"><i class="bi bi-arrow-right"></i></a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
  <!-- [ Footer ] start -->
<%@include file="pages/footer.jsp"%>
  <!-- [ Footer ] end -->
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