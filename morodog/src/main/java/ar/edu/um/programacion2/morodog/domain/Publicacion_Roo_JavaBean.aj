// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.domain;

import ar.edu.um.programacion2.morodog.domain.Link;
import ar.edu.um.programacion2.morodog.domain.Publicacion;
import ar.edu.um.programacion2.morodog.domain.RePublicacion;
import ar.edu.um.programacion2.morodog.domain.Tendencia;
import ar.edu.um.programacion2.morodog.domain.Usuario;
import java.util.Date;
import java.util.Set;

privileged aspect Publicacion_Roo_JavaBean {
    
    public String Publicacion.getTexto() {
        return this.texto;
    }
    
    public void Publicacion.setTexto(String texto) {
        this.texto = texto;
    }
    
    public Date Publicacion.getFecha() {
        return this.fecha;
    }
    
    public void Publicacion.setFecha(Date fecha) {
        this.fecha = fecha;
    }
    
    public Usuario Publicacion.getUsuario() {
        return this.usuario;
    }
    
    public void Publicacion.setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    
    public Set<RePublicacion> Publicacion.getRePublicacion() {
        return this.rePublicacion;
    }
    
    public void Publicacion.setRePublicacion(Set<RePublicacion> rePublicacion) {
        this.rePublicacion = rePublicacion;
    }
    
    public Set<Link> Publicacion.getLink() {
        return this.link;
    }
    
    public void Publicacion.setLink(Set<Link> link) {
        this.link = link;
    }
    
    public Set<Tendencia> Publicacion.getTendencia() {
        return this.tendencia;
    }
    
    public void Publicacion.setTendencia(Set<Tendencia> tendencia) {
        this.tendencia = tendencia;
    }
    
    public Set<Link> Publicacion.getLinks() {
        return this.links;
    }
    
    public void Publicacion.setLinks(Set<Link> links) {
        this.links = links;
    }
    
    public Set<Tendencia> Publicacion.getTendencias() {
        return this.tendencias;
    }
    
    public void Publicacion.setTendencias(Set<Tendencia> tendencias) {
        this.tendencias = tendencias;
    }
    
}
