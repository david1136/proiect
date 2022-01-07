<%-- 
    Document   : addCar
    Created on : Jan 7, 2022, 4:11:14 PM
    Author     : Ali
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Add Car">
    <h1>Add Car</h1>
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddCar">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="license_plate"> License Plate </label>
                <input type="text" class="form-control" id="license_plate" name="license_plate" placeholder="License plate" value="" required>
                <div class="invalid-feedback">
                    License plate is required
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="parking_spot"> Parking Spot </label>
                <input type="text" class="form-control" id="parking_spot" name="parking_spot" placeholder="Parking spot" value="" required>
                <div class="invalid-feedback">
                    Parking Spot is required
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="owner_id"> Owner </label>
                <select class="form-select" id="owner_id" name="owner_id" required>
                    <option value=""> Choose... </option> 
                    <c:forEach var="user" items="${users}" varStatus="status">
                        <option value="${user.id}"> ${user.username} </option>
                    </c:forEach>
                </select>
                    <div class="invalid-feedback">
                        Please select an owner..
                    </div>
            </div>
        </div>
         <hr class="my-4">
        <button class="w-100 btn btn-primary btn-lg" type="submit">Save</button>
    </form>
        
   
    <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
     <script src="form-validation.js"></script>

</t:pageTemplate>
      