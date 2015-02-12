// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.domain;

import ar.edu.um.programacion2.morodog.domain.Link;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Link_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Link.entityManager;
    
    public static final List<String> Link.fieldNames4OrderClauseFilter = java.util.Arrays.asList("nombre", "url", "publicacion");
    
    public static final EntityManager Link.entityManager() {
        EntityManager em = new Link().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Link.countLinks() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Link o", Long.class).getSingleResult();
    }
    
    public static List<Link> Link.findAllLinks() {
        return entityManager().createQuery("SELECT o FROM Link o", Link.class).getResultList();
    }
    
    public static List<Link> Link.findAllLinks(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Link o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Link.class).getResultList();
    }
    
    public static Link Link.findLink(Long id) {
        if (id == null) return null;
        return entityManager().find(Link.class, id);
    }
    
    public static List<Link> Link.findLinkEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Link o", Link.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Link> Link.findLinkEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Link o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Link.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Link.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Link.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Link attached = Link.findLink(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Link.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Link.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Link Link.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Link merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}