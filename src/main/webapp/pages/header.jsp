
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="nxl-navigation">
    <div class="navbar-wrapper">
        <div class="m-header">
            <a href="index.html" class="b-brand">
                <!-- ========   change your logo hear   ============ -->
                <img src="assets/images/Devsync%20(2).png" alt="" class="logo logo-lg" width="210px;"/>
                <img src="assets/images/d.png" alt="" class="logo logo-sm" style="margin-left: -35px; width: 120px;" />
            </a>
        </div>
        <div class="navbar-content">
            <ul class="nxl-navbar">
                <li class="nxl-item nxl-caption">
                    <label>Navigation</label>
                </li>
                <li class="nxl-item nxl-hasmenu">
                    <a href="javascript:void(0);" class="nxl-link">
                        <span class="nxl-micon"><i class="feather-life-buoy"></i></span>
                        <span class="nxl-mtext">Help Center</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                    </a>
                    <ul class="nxl-submenu">
                        <li class="nxl-item"><a class="nxl-link" href="">Support</a></li>
                        <li class="nxl-item"><a class="nxl-link" href="">KnowledgeBase</a></li>
                        <li class="nxl-item"><a class="nxl-link" href="">Documentations</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<header class="nxl-header">
    <div class="header-wrapper">
        <div class="header-left d-flex align-items-center gap-4">
            <a href="javascript:void(0);" class="nxl-head-mobile-toggler" id="mobile-collapse">
                <div class="hamburger hamburger--arrowturn">
                    <div class="hamburger-box">
                        <div class="hamburger-inner"></div>
                    </div>
                </div>
            </a>
            <div class="nxl-navigation-toggle">
                <a href="javascript:void(0);" id="menu-mini-button">
                    <i class="feather-align-left"></i>
                </a>
                <a href="javascript:void(0);" id="menu-expend-button" style="display: none">
                    <i class="feather-arrow-right"></i>
                </a>
            </div>

        </div>
        <div class="header-right ms-auto">
            <div class="d-flex align-items-center">
                <div class="nxl-h-item dark-light-theme">
                    <a href="javascript:void(0);" class="nxl-head-link me-0 dark-button">
                        <i class="feather-moon"></i>
                    </a>
                    <a href="javascript:void(0);" class="nxl-head-link me-0 light-button" style="display: none">
                        <i class="feather-sun"></i>
                    </a>
                </div>
                <div class="dropdown nxl-h-item">
                <a href="javascript:void(0);" data-bs-toggle="dropdown" role="button" data-bs-auto-close="outside">
                    <img src="assets/images/avatar/user-avatar.png" alt="user-image" class="img-fluid user-avtar me-0" />
                </a>
                <div class="dropdown-menu dropdown-menu-end nxl-h-dropdown nxl-user-dropdown">
                    <div class="dropdown-header">
                        <div class="d-flex align-items-center">
                            <img src="assets/images/avatar/user-avatar.png" alt="user-image" class="img-fluid user-avtar" />
                            <div>
                                <h6 class="text-dark mb-0"><%= loggedUser.getUsername() %> <span class="badge bg-soft-success text-success ms-1"><%= loggedUser.isManager() %> </span></h6>
                                <span class="fs-12 fw-medium text-muted"><%= loggedUser.getEmail() %></span>
                            </div>
                        </div>
                    </div>
                    <a href="logout" class="dropdown-item">
                        <i class="feather-log-out"></i>
                        <span>Logout</span>
                    </a>
                </div>
            </div>
            </div>

        </div>
    </div>

</header>

