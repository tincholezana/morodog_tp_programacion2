// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.service;

import ar.edu.um.programacion2.morodog.domain.Tendencia;
import ar.edu.um.programacion2.morodog.service.TendenciaService;
import java.util.List;

privileged aspect TendenciaService_Roo_Service {
    
    public abstract long TendenciaService.countAllTendencias();    
    public abstract void TendenciaService.deleteTendencia(Tendencia tendencia);    
    public abstract Tendencia TendenciaService.findTendencia(Long id);    
    public abstract List<Tendencia> TendenciaService.findAllTendencias();    
    public abstract List<Tendencia> TendenciaService.findTendenciaEntries(int firstResult, int maxResults);    
    public abstract void TendenciaService.saveTendencia(Tendencia tendencia);    
    public abstract Tendencia TendenciaService.updateTendencia(Tendencia tendencia);    
}
