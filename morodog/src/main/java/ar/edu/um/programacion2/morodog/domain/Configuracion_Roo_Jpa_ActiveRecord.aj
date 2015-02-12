// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.domain;

import ar.edu.um.programacion2.morodog.domain.Configuracion;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Configuracion_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Configuracion.entityManager;
    
    public static final List<String> Configuracion.fieldNames4OrderClauseFilter = java.util.Arrays.asList("nDiasEmail", "nDiasTendencia");
    
    public static final EntityManager Configuracion.entityManager() {
        EntityManager em = new Configuracion().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Configuracion.countConfiguracions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Configuracion o", Long.class).getSingleResult();
    }
    
    public static List<Configuracion> Configuracion.findAllConfiguracions() {
        return entityManager().createQuery("SELECT o FROM Configuracion o", Configuracion.class).getResultList();
    }
    
    public static List<Configuracion> Configuracion.findAllConfiguracions(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Configuracion o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Configuracion.class).getResultList();
    }
    
    public static Configuracion Configuracion.findConfiguracion(Long id) {
        if (id == null) return null;
        return entityManager().find(Configuracion.class, id);
    }
    
    public static List<Configuracion> Configuracion.findConfiguracionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Configuracion o", Configuracion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Configuracion> Configuracion.findConfiguracionEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Configuracion o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Configuracion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Configuracion.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Configuracion.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Configuracion attached = Configuracion.findConfiguracion(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Configuracion.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Configuracion.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Configuracion Configuracion.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Configuracion merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
