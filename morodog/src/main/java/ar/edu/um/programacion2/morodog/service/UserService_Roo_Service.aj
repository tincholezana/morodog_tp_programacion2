// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.service;

import ar.edu.um.programacion2.morodog.domain.User;
import ar.edu.um.programacion2.morodog.service.UserService;
import java.util.List;

privileged aspect UserService_Roo_Service {
    
    public abstract long UserService.countAllUsers();    
    public abstract void UserService.deleteUser(User user);    
    public abstract User UserService.findUser(Long id);    
    public abstract List<User> UserService.findAllUsers();    
    public abstract List<User> UserService.findUserEntries(int firstResult, int maxResults);    
    public abstract void UserService.saveUser(User user);    
    public abstract User UserService.updateUser(User user);    
}