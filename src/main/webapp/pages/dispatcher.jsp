<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%
  // Determine which page to load based on request parameters or some other logic
  String page = request.getParameter("page");
  if (page == null || page.isEmpty()) {
    page = "user-list.jsp";  // Default to home page
  }
  request.setAttribute("contentPage", page);
%>

<jsp:include page="layout.jsp" />
