// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.service;

import ar.edu.um.programacion2.morodog.domain.Vinculo;
import ar.edu.um.programacion2.morodog.service.VinculoService;
import java.util.List;

privileged aspect VinculoService_Roo_Service {
    
    public abstract long VinculoService.countAllVinculoes();    
    public abstract void VinculoService.deleteVinculo(Vinculo vinculo);    
    public abstract Vinculo VinculoService.findVinculo(Long id);    
    public abstract List<Vinculo> VinculoService.findAllVinculoes();    
    public abstract List<Vinculo> VinculoService.findVinculoEntries(int firstResult, int maxResults);    
    public abstract void VinculoService.saveVinculo(Vinculo vinculo);    
    public abstract Vinculo VinculoService.updateVinculo(Vinculo vinculo);    
}