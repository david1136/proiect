<%-- 
    Document   : menu
    Created on : Jan 5, 2022, 12:03:14 PM
    Author     : Ali
--%>
 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="${pageContext.request.contextPath}">Parking Lot</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
             <li class="nav-item">
            <a class="nav-link ${pageContext.request.requestURI eq '/ParkingLot/Cars' ? ' active' : ''}" aria-current="page" href="${pageContext.request.contextPath}/Cars">Cars</a>
          </li>
          <li class="nav-item">
            <a class="nav-link ${pageContext.request.requestURI eq '/ParkingLot/Users' ? ' active' : ''}" aria-current="page" href="${pageContext.request.contextPath}/Users">Users</a>
          </li>
          <li class="nav-item">
            <a class="nav-link ${pageContext.request.requestURI eq '/ParkingLot/about.jsp' ? ' active' : ''}" aria-current="page" href="${pageContext.request.contextPath}/about.jsp">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled">Disabled</a>
          </li>
        </ul>
          <ul>
              <li class="navbar-nav d-flex">
                  <a class="nav-link" href="${pageContext.request.contextPath}/Login">Login</a>
              </li>
          </ul>

      </div>
    </div>
  </nav>