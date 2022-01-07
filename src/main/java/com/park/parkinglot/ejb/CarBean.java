/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package com.park.parkinglot.ejb;
import com.park.parkinglot.common.CarDetalis;
import com.park.parkinglot.entity.Car;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import javax.ejb.EJBException;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Ali
 */
@Stateless
public class CarBean {

    private static final Logger LOG = Logger.getLogger(CarBean.class.getName());

    @PersistenceContext
    private EntityManager em;

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    public List<CarDetalis> getAllCars() {
        LOG.info("getAllCars");
        try {
            Query query = em.createQuery("SELECT u FROM Car u");
            List<Car> cars = (List<Car>) query.getResultList();
            return copyCarsToDetails(cars);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }
    }

    private List<CarDetalis> copyCarsToDetails(List<Car> cars){
        List<CarDetalis> detailsList = new ArrayList<>();
        for(Car car : cars){
            CarDetalis carDetails = new CarDetalis(car.getId(),
            car.getLicensePlate(),
            car.getParkingSpot(),
            car.getUser().getUsername());
        detailsList.add(carDetails);
        }
        return detailsList;
    }
}