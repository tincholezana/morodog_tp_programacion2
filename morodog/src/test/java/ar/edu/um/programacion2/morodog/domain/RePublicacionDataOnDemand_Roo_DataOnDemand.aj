// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.domain;

import ar.edu.um.programacion2.morodog.domain.Publicacion;
import ar.edu.um.programacion2.morodog.domain.PublicacionDataOnDemand;
import ar.edu.um.programacion2.morodog.domain.RePublicacion;
import ar.edu.um.programacion2.morodog.domain.RePublicacionDataOnDemand;
import ar.edu.um.programacion2.morodog.domain.Usuario;
import ar.edu.um.programacion2.morodog.domain.UsuarioDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect RePublicacionDataOnDemand_Roo_DataOnDemand {
    
    declare @type: RePublicacionDataOnDemand: @Component;
    
    private Random RePublicacionDataOnDemand.rnd = new SecureRandom();
    
    private List<RePublicacion> RePublicacionDataOnDemand.data;
    
    @Autowired
    UsuarioDataOnDemand RePublicacionDataOnDemand.usuarioDataOnDemand;
    
    @Autowired
    PublicacionDataOnDemand RePublicacionDataOnDemand.publicacionDataOnDemand;
    
    public RePublicacion RePublicacionDataOnDemand.getNewTransientRePublicacion(int index) {
        RePublicacion obj = new RePublicacion();
        setFecha(obj, index);
        setIdUsuario(obj, index);
        setPublicacion(obj, index);
        return obj;
    }
    
    public void RePublicacionDataOnDemand.setFecha(RePublicacion obj, int index) {
        Date fecha = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setFecha(fecha);
    }
    
    public void RePublicacionDataOnDemand.setIdUsuario(RePublicacion obj, int index) {
        Usuario idUsuario = usuarioDataOnDemand.getRandomUsuario();
        obj.setIdUsuario(idUsuario);
    }
    
    public void RePublicacionDataOnDemand.setPublicacion(RePublicacion obj, int index) {
        Publicacion publicacion = publicacionDataOnDemand.getRandomPublicacion();
        obj.setPublicacion(publicacion);
    }
    
    public RePublicacion RePublicacionDataOnDemand.getSpecificRePublicacion(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        RePublicacion obj = data.get(index);
        Long id = obj.getId();
        return RePublicacion.findRePublicacion(id);
    }
    
    public RePublicacion RePublicacionDataOnDemand.getRandomRePublicacion() {
        init();
        RePublicacion obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return RePublicacion.findRePublicacion(id);
    }
    
    public boolean RePublicacionDataOnDemand.modifyRePublicacion(RePublicacion obj) {
        return false;
    }
    
    public void RePublicacionDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = RePublicacion.findRePublicacionEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'RePublicacion' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<RePublicacion>();
        for (int i = 0; i < 10; i++) {
            RePublicacion obj = getNewTransientRePublicacion(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
