// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.service;

import ar.edu.um.programacion2.morodog.domain.Role;
import ar.edu.um.programacion2.morodog.service.RoleService;
import java.util.List;

privileged aspect RoleService_Roo_Service {
    
    public abstract long RoleService.countAllRoles();    
    public abstract void RoleService.deleteRole(Role role);    
    public abstract Role RoleService.findRole(Long id);    
    public abstract List<Role> RoleService.findAllRoles();    
    public abstract List<Role> RoleService.findRoleEntries(int firstResult, int maxResults);    
    public abstract void RoleService.saveRole(Role role);    
    public abstract Role RoleService.updateRole(Role role);    
}
