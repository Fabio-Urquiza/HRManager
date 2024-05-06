/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Entity.Empleados;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Usuario
 */
@Stateless
public class EmpleadosFacade extends AbstractFacade<Empleados> {

    @PersistenceContext(unitName = "com.hrmanager_HRManager_war_1.0-SNAPSHOTPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public EmpleadosFacade() {
        super(Empleados.class);
    }
    
    public boolean existeEmpleadoConDocumento(String documentoNumero) {
        Query query = em.createQuery("SELECT COUNT(e) FROM Empleados e WHERE e.documentoNumero = :documentoNumero");
        query.setParameter("documentoNumero", documentoNumero);
        long count = (long) query.getSingleResult();
        return count > 0;
    }
    
}
