<%-- 
    Document   : cars
    Created on : Jan 5, 2022, 8:26:12 PM
    Author     : Ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
    <h1>Cars</h1>
    <c:forEach var="car" items="${cars}" varStatus="status">
    <div class="row">
        <div class="col-md-4">
         ${car.licensePlate}   
        </div>
        <div class="col-md-4">
           ${car.parkingSpot} 
        </div>
        <div class="col-md-4">
             ${car.username}
        </div>
    </div>
    </c:forEach>
</t:pageTemplate>