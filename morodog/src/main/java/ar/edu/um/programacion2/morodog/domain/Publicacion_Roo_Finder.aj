// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.domain;

import ar.edu.um.programacion2.morodog.domain.Publicacion;
import ar.edu.um.programacion2.morodog.domain.Usuario;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Publicacion_Roo_Finder {
    
    public static Long Publicacion.countFindPublicacionsByFechaBetween(Date minFecha, Date maxFecha) {
        if (minFecha == null) throw new IllegalArgumentException("The minFecha argument is required");
        if (maxFecha == null) throw new IllegalArgumentException("The maxFecha argument is required");
        EntityManager em = Publicacion.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Publicacion AS o WHERE o.fecha BETWEEN :minFecha AND :maxFecha", Long.class);
        q.setParameter("minFecha", minFecha);
        q.setParameter("maxFecha", maxFecha);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Publicacion.countFindPublicacionsByFechaGreaterThan(Date fecha) {
        if (fecha == null) throw new IllegalArgumentException("The fecha argument is required");
        EntityManager em = Publicacion.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Publicacion AS o WHERE o.fecha > :fecha", Long.class);
        q.setParameter("fecha", fecha);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Publicacion.countFindPublicacionsByFechaLessThan(Date fecha) {
        if (fecha == null) throw new IllegalArgumentException("The fecha argument is required");
        EntityManager em = Publicacion.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Publicacion AS o WHERE o.fecha < :fecha", Long.class);
        q.setParameter("fecha", fecha);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Publicacion.countFindPublicacionsByTextoLike(String texto) {
        if (texto == null || texto.length() == 0) throw new IllegalArgumentException("The texto argument is required");
        texto = texto.replace('*', '%');
        if (texto.charAt(0) != '%') {
            texto = "%" + texto;
        }
        if (texto.charAt(texto.length() - 1) != '%') {
            texto = texto + "%";
        }
        EntityManager em = Publicacion.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Publicacion AS o WHERE LOWER(o.texto) LIKE LOWER(:texto)", Long.class);
        q.setParameter("texto", texto);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Publicacion.countFindPublicacionsByUsuario(Usuario usuario) {
        if (usuario == null) throw new IllegalArgumentException("The usuario argument is required");
        EntityManager em = Publicacion.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Publicacion AS o WHERE o.usuario = :usuario", Long.class);
        q.setParameter("usuario", usuario);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Publicacion> Publicacion.findPublicacionsByFechaBetween(Date minFecha, Date maxFecha) {
        if (minFecha == null) throw new IllegalArgumentException("The minFecha argument is required");
        if (maxFecha == null) throw new IllegalArgumentException("The maxFecha argument is required");
        EntityManager em = Publicacion.entityManager();
        TypedQuery<Publicacion> q = em.createQuery("SELECT o FROM Publicacion AS o WHERE o.fecha BETWEEN :minFecha AND :maxFecha", Publicacion.class);
        q.setParameter("minFecha", minFecha);
        q.setParameter("maxFecha", maxFecha);
        return q;
    }
    
    public static TypedQuery<Publicacion> Publicacion.findPublicacionsByFechaBetween(Date minFecha, Date maxFecha, String sortFieldName, String sortOrder) {
        if (minFecha == null) throw new IllegalArgumentException("The minFecha argument is required");
        if (maxFecha == null) throw new IllegalArgumentException("The maxFecha argument is required");
        EntityManager em = Publicacion.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Publicacion AS o WHERE o.fecha BETWEEN :minFecha AND :maxFecha");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Publicacion> q = em.createQuery(queryBuilder.toString(), Publicacion.class);
        q.setParameter("minFecha", minFecha);
        q.setParameter("maxFecha", maxFecha);
        return q;
    }
    
    public static TypedQuery<Publicacion> Publicacion.findPublicacionsByFechaGreaterThan(Date fecha) {
        if (fecha == null) throw new IllegalArgumentException("The fecha argument is required");
        EntityManager em = Publicacion.entityManager();
        TypedQuery<Publicacion> q = em.createQuery("SELECT o FROM Publicacion AS o WHERE o.fecha > :fecha", Publicacion.class);
        q.setParameter("fecha", fecha);
        return q;
    }
    
    public static TypedQuery<Publicacion> Publicacion.findPublicacionsByFechaGreaterThan(Date fecha, String sortFieldName, String sortOrder) {
        if (fecha == null) throw new IllegalArgumentException("The fecha argument is required");
        EntityManager em = Publicacion.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Publicacion AS o WHERE o.fecha > :fecha");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Publicacion> q = em.createQuery(queryBuilder.toString(), Publicacion.class);
        q.setParameter("fecha", fecha);
        return q;
    }
    
    public static TypedQuery<Publicacion> Publicacion.findPublicacionsByFechaLessThan(Date fecha) {
        if (fecha == null) throw new IllegalArgumentException("The fecha argument is required");
        EntityManager em = Publicacion.entityManager();
        TypedQuery<Publicacion> q = em.createQuery("SELECT o FROM Publicacion AS o WHERE o.fecha < :fecha", Publicacion.class);
        q.setParameter("fecha", fecha);
        return q;
    }
    
    public static TypedQuery<Publicacion> Publicacion.findPublicacionsByFechaLessThan(Date fecha, String sortFieldName, String sortOrder) {
        if (fecha == null) throw new IllegalArgumentException("The fecha argument is required");
        EntityManager em = Publicacion.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Publicacion AS o WHERE o.fecha < :fecha");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Publicacion> q = em.createQuery(queryBuilder.toString(), Publicacion.class);
        q.setParameter("fecha", fecha);
        return q;
    }
    
    public static TypedQuery<Publicacion> Publicacion.findPublicacionsByTextoLike(String texto) {
        if (texto == null || texto.length() == 0) throw new IllegalArgumentException("The texto argument is required");
        texto = texto.replace('*', '%');
        if (texto.charAt(0) != '%') {
            texto = "%" + texto;
        }
        if (texto.charAt(texto.length() - 1) != '%') {
            texto = texto + "%";
        }
        EntityManager em = Publicacion.entityManager();
        TypedQuery<Publicacion> q = em.createQuery("SELECT o FROM Publicacion AS o WHERE LOWER(o.texto) LIKE LOWER(:texto)", Publicacion.class);
        q.setParameter("texto", texto);
        return q;
    }
    
    public static TypedQuery<Publicacion> Publicacion.findPublicacionsByTextoLike(String texto, String sortFieldName, String sortOrder) {
        if (texto == null || texto.length() == 0) throw new IllegalArgumentException("The texto argument is required");
        texto = texto.replace('*', '%');
        if (texto.charAt(0) != '%') {
            texto = "%" + texto;
        }
        if (texto.charAt(texto.length() - 1) != '%') {
            texto = texto + "%";
        }
        EntityManager em = Publicacion.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Publicacion AS o WHERE LOWER(o.texto) LIKE LOWER(:texto)");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Publicacion> q = em.createQuery(queryBuilder.toString(), Publicacion.class);
        q.setParameter("texto", texto);
        return q;
    }
    
    public static TypedQuery<Publicacion> Publicacion.findPublicacionsByUsuario(Usuario usuario) {
        if (usuario == null) throw new IllegalArgumentException("The usuario argument is required");
        EntityManager em = Publicacion.entityManager();
        TypedQuery<Publicacion> q = em.createQuery("SELECT o FROM Publicacion AS o WHERE o.usuario = :usuario", Publicacion.class);
        q.setParameter("usuario", usuario);
        return q;
    }
    
    public static TypedQuery<Publicacion> Publicacion.findPublicacionsByUsuario(Usuario usuario, String sortFieldName, String sortOrder) {
        if (usuario == null) throw new IllegalArgumentException("The usuario argument is required");
        EntityManager em = Publicacion.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Publicacion AS o WHERE o.usuario = :usuario");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Publicacion> q = em.createQuery(queryBuilder.toString(), Publicacion.class);
        q.setParameter("usuario", usuario);
        return q;
    }
    
}