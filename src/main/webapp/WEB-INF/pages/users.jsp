<%-- 
    Document   : users
    Created on : Nov 15, 2021, 9:10:53 AM
    Author     : Ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="u" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Users">
    <h1>Users</h1>
    <u:forEach var="user" items="${users}" varStatus="status">
    <div class="row">
        <div class="col-md-4">
            ${user.username}
        </div>
        <div class="col-md-4">
            ${user.email}
        </div>
        <div class="col-md-4">
            ${user.position}
        </div>
    </div>
    </u:forEach>
</t:pageTemplate>