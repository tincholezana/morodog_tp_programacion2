// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.service;

import ar.edu.um.programacion2.morodog.domain.RePublicacion;
import ar.edu.um.programacion2.morodog.service.RePublicacionService;
import java.util.List;

privileged aspect RePublicacionService_Roo_Service {
    
    public abstract long RePublicacionService.countAllRePublicacions();    
    public abstract void RePublicacionService.deleteRePublicacion(RePublicacion rePublicacion);    
    public abstract RePublicacion RePublicacionService.findRePublicacion(Long id);    
    public abstract List<RePublicacion> RePublicacionService.findAllRePublicacions();    
    public abstract List<RePublicacion> RePublicacionService.findRePublicacionEntries(int firstResult, int maxResults);    
    public abstract void RePublicacionService.saveRePublicacion(RePublicacion rePublicacion);    
    public abstract RePublicacion RePublicacionService.updateRePublicacion(RePublicacion rePublicacion);    
}