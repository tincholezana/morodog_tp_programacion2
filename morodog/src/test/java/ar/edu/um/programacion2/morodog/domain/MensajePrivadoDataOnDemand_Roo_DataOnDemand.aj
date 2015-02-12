// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.domain;

import ar.edu.um.programacion2.morodog.domain.MensajePrivado;
import ar.edu.um.programacion2.morodog.domain.MensajePrivadoDataOnDemand;
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

privileged aspect MensajePrivadoDataOnDemand_Roo_DataOnDemand {
    
    declare @type: MensajePrivadoDataOnDemand: @Component;
    
    private Random MensajePrivadoDataOnDemand.rnd = new SecureRandom();
    
    private List<MensajePrivado> MensajePrivadoDataOnDemand.data;
    
    @Autowired
    UsuarioDataOnDemand MensajePrivadoDataOnDemand.usuarioDataOnDemand;
    
    public MensajePrivado MensajePrivadoDataOnDemand.getNewTransientMensajePrivado(int index) {
        MensajePrivado obj = new MensajePrivado();
        setEnviado(obj, index);
        setFecha(obj, index);
        setIdUsuarioEmisor(obj, index);
        setIdUsuarioReceptor(obj, index);
        setTexto(obj, index);
        return obj;
    }
    
    public void MensajePrivadoDataOnDemand.setEnviado(MensajePrivado obj, int index) {
        Boolean enviado = Boolean.TRUE;
        obj.setEnviado(enviado);
    }
    
    public void MensajePrivadoDataOnDemand.setFecha(MensajePrivado obj, int index) {
        Date fecha = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setFecha(fecha);
    }
    
    public void MensajePrivadoDataOnDemand.setIdUsuarioEmisor(MensajePrivado obj, int index) {
        Usuario idUsuarioEmisor = usuarioDataOnDemand.getRandomUsuario();
        obj.setIdUsuarioEmisor(idUsuarioEmisor);
    }
    
    public void MensajePrivadoDataOnDemand.setIdUsuarioReceptor(MensajePrivado obj, int index) {
        Integer idUsuarioReceptor = new Integer(index);
        obj.setIdUsuarioReceptor(idUsuarioReceptor);
    }
    
    public void MensajePrivadoDataOnDemand.setTexto(MensajePrivado obj, int index) {
        String texto = "texto_" + index;
        if (texto.length() > 140) {
            texto = texto.substring(0, 140);
        }
        obj.setTexto(texto);
    }
    
    public MensajePrivado MensajePrivadoDataOnDemand.getSpecificMensajePrivado(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        MensajePrivado obj = data.get(index);
        Long id = obj.getId();
        return MensajePrivado.findMensajePrivado(id);
    }
    
    public MensajePrivado MensajePrivadoDataOnDemand.getRandomMensajePrivado() {
        init();
        MensajePrivado obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return MensajePrivado.findMensajePrivado(id);
    }
    
    public boolean MensajePrivadoDataOnDemand.modifyMensajePrivado(MensajePrivado obj) {
        return false;
    }
    
    public void MensajePrivadoDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = MensajePrivado.findMensajePrivadoEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'MensajePrivado' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<MensajePrivado>();
        for (int i = 0; i < 10; i++) {
            MensajePrivado obj = getNewTransientMensajePrivado(i);
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
