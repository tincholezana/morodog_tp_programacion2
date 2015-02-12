// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.service;

import ar.edu.um.programacion2.morodog.domain.Role;
import ar.edu.um.programacion2.morodog.service.RoleServiceImpl;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect RoleServiceImpl_Roo_Service {
    
    declare @type: RoleServiceImpl: @Service;
    
    declare @type: RoleServiceImpl: @Transactional;
    
    public long RoleServiceImpl.countAllRoles() {
        return Role.countRoles();
    }
    
    public void RoleServiceImpl.deleteRole(Role role) {
        role.remove();
    }
    
    public Role RoleServiceImpl.findRole(Long id) {
        return Role.findRole(id);
    }
    
    public List<Role> RoleServiceImpl.findAllRoles() {
        return Role.findAllRoles();
    }
    
    public List<Role> RoleServiceImpl.findRoleEntries(int firstResult, int maxResults) {
        return Role.findRoleEntries(firstResult, maxResults);
    }
    
    public void RoleServiceImpl.saveRole(Role role) {
        role.persist();
    }
    
    public Role RoleServiceImpl.updateRole(Role role) {
        return role.merge();
    }
    
}
