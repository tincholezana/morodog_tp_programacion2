// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.domain;

import ar.edu.um.programacion2.morodog.domain.Role;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Role_Roo_Finder {
    
    public static Long Role.countFindRolesByRoleNameEquals(String roleName) {
        if (roleName == null || roleName.length() == 0) throw new IllegalArgumentException("The roleName argument is required");
        EntityManager em = Role.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Role AS o WHERE o.roleName = :roleName", Long.class);
        q.setParameter("roleName", roleName);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Role> Role.findRolesByRoleNameEquals(String roleName) {
        if (roleName == null || roleName.length() == 0) throw new IllegalArgumentException("The roleName argument is required");
        EntityManager em = Role.entityManager();
        TypedQuery<Role> q = em.createQuery("SELECT o FROM Role AS o WHERE o.roleName = :roleName", Role.class);
        q.setParameter("roleName", roleName);
        return q;
    }
    
    public static TypedQuery<Role> Role.findRolesByRoleNameEquals(String roleName, String sortFieldName, String sortOrder) {
        if (roleName == null || roleName.length() == 0) throw new IllegalArgumentException("The roleName argument is required");
        EntityManager em = Role.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Role AS o WHERE o.roleName = :roleName");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Role> q = em.createQuery(queryBuilder.toString(), Role.class);
        q.setParameter("roleName", roleName);
        return q;
    }
    
}
