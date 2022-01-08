<%-- 
    Document   : login
    Created on : Jan 7, 2022, 5:47:37 PM
    Author     : Ali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<t:pageTemplate pageTitle="Login">
    <c:if test="${message != null}">
        <div class="alert alert-warning" role="alert">
            ${message}
        </div>
    </c:if>
    <form class="form-signin" method="POST" action="j_security_check">
        <h1 class="h3 mb-3 font-weight-normal"> Sign in </h1>
        <label for="username" class="sr-only"> Username </label>
        <input type="text" id="username" name="j_username" class="form-control" placeholder="Username" required autofocus />
        <label for="password" class="sr-only"> Password </label>
        <input type="password" id="password" name="j_password" class="form-control" placeholder="Password" required />
        <hr class="my-4">
        <button class="w-100 btn btn-primary btn-lg" type="submit"> Sign in </button>
    </form>
</t:pageTemplate>