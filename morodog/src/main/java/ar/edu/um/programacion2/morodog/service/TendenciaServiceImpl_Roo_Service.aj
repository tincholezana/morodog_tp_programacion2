// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.service;

import ar.edu.um.programacion2.morodog.domain.Tendencia;
import ar.edu.um.programacion2.morodog.service.TendenciaServiceImpl;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TendenciaServiceImpl_Roo_Service {
    
    declare @type: TendenciaServiceImpl: @Service;
    
    declare @type: TendenciaServiceImpl: @Transactional;
    
    public long TendenciaServiceImpl.countAllTendencias() {
        return Tendencia.countTendencias();
    }
    
    public void TendenciaServiceImpl.deleteTendencia(Tendencia tendencia) {
        tendencia.remove();
    }
    
    public Tendencia TendenciaServiceImpl.findTendencia(Long id) {
        return Tendencia.findTendencia(id);
    }
    
    public List<Tendencia> TendenciaServiceImpl.findAllTendencias() {
        return Tendencia.findAllTendencias();
    }
    
    public List<Tendencia> TendenciaServiceImpl.findTendenciaEntries(int firstResult, int maxResults) {
        return Tendencia.findTendenciaEntries(firstResult, maxResults);
    }
    
    public void TendenciaServiceImpl.saveTendencia(Tendencia tendencia) {
        tendencia.persist();
    }
    
    public Tendencia TendenciaServiceImpl.updateTendencia(Tendencia tendencia) {
        return tendencia.merge();
    }
    
}
