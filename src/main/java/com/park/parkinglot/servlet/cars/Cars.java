/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.park.parkinglot.servlet.cars;


import com.park.parkinglot.common.CarDetalis;
import com.park.parkinglot.ejb.CarBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.HttpConstraint;
import javax.servlet.annotation.ServletSecurity;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ali
 */





@WebServlet(name = "Cars", urlPatterns = {"/Cars"})
public class Cars extends HttpServlet {

    @Inject
    private CarBean carBean;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
@@ -54,12 +61,18 @@ protected void processRequest(HttpServletRequest request, HttpServletResponse re
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
       request.setAttribute("activePage", "Cars");
       request.setAttribute("numberOfFreeParkingSpots", 10);
    

       List<CarDetalis> cars= carBean.getAllCars();
       request.setAttribute("cars",cars);

       request.getRequestDispatcher("/WEB-INF/pages/cars.jsp").forward(request, response);

    }
}

