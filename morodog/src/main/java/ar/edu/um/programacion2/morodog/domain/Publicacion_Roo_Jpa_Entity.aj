// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.domain;

import ar.edu.um.programacion2.morodog.domain.Publicacion;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Publicacion_Roo_Jpa_Entity {
    
    declare @type: Publicacion: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Publicacion.id;
    
    @Version
    @Column(name = "version")
    private Integer Publicacion.version;
    
    public Long Publicacion.getId() {
        return this.id;
    }
    
    public void Publicacion.setId(Long id) {
        this.id = id;
    }
    
    public Integer Publicacion.getVersion() {
        return this.version;
    }
    
    public void Publicacion.setVersion(Integer version) {
        this.version = version;
    }
    
}
