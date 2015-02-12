// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.domain;

import ar.edu.um.programacion2.morodog.domain.Sexo;
import ar.edu.um.programacion2.morodog.domain.UserDataOnDemand;
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

privileged aspect UsuarioDataOnDemand_Roo_DataOnDemand {
    
    declare @type: UsuarioDataOnDemand: @Component;
    
    private Random UsuarioDataOnDemand.rnd = new SecureRandom();
    
    private List<Usuario> UsuarioDataOnDemand.data;
    
    @Autowired
    UserDataOnDemand UsuarioDataOnDemand.userDataOnDemand;
    
    public Usuario UsuarioDataOnDemand.getNewTransientUsuario(int index) {
        Usuario obj = new Usuario();
        setActivo(obj, index);
        setApellido(obj, index);
        setEMail(obj, index);
        setFecha(obj, index);
        setNombre(obj, index);
        setNombreUsuario(obj, index);
        setPassword(obj, index);
        setSexo(obj, index);
        return obj;
    }
    
    public void UsuarioDataOnDemand.setActivo(Usuario obj, int index) {
        Boolean activo = Boolean.TRUE;
        obj.setActivo(activo);
    }
    
    public void UsuarioDataOnDemand.setApellido(Usuario obj, int index) {
        String apellido = "apellido_" + index;
        if (apellido.length() > 40) {
            apellido = apellido.substring(0, 40);
        }
        obj.setApellido(apellido);
    }
    
    public void UsuarioDataOnDemand.setEMail(Usuario obj, int index) {
        String eMail = "foo" + index + "@bar.com";
        if (eMail.length() > 250) {
            eMail = new Random().nextInt(10) + eMail.substring(1, 250);
        }
        obj.setEMail(eMail);
    }
    
    public void UsuarioDataOnDemand.setFecha(Usuario obj, int index) {
        Date fecha = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setFecha(fecha);
    }
    
    public void UsuarioDataOnDemand.setNombre(Usuario obj, int index) {
        String nombre = "nombre_" + index;
        if (nombre.length() > 40) {
            nombre = nombre.substring(0, 40);
        }
        obj.setNombre(nombre);
    }
    
    public void UsuarioDataOnDemand.setNombreUsuario(Usuario obj, int index) {
        String nombreUsuario = "nombreUsuario_" + index;
        if (nombreUsuario.length() > 20) {
            nombreUsuario = new Random().nextInt(10) + nombreUsuario.substring(1, 20);
        }
        obj.setNombreUsuario(nombreUsuario);
    }
    
    public void UsuarioDataOnDemand.setPassword(Usuario obj, int index) {
        String password = "password_" + index;
        if (password.length() > 45) {
            password = password.substring(0, 45);
        }
        obj.setPassword(password);
    }
    
    public void UsuarioDataOnDemand.setSexo(Usuario obj, int index) {
        Sexo sexo = Sexo.class.getEnumConstants()[0];
        obj.setSexo(sexo);
    }
    
    public Usuario UsuarioDataOnDemand.getSpecificUsuario(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Usuario obj = data.get(index);
        Long id = obj.getId();
        return Usuario.findUsuario(id);
    }
    
    public Usuario UsuarioDataOnDemand.getRandomUsuario() {
        init();
        Usuario obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Usuario.findUsuario(id);
    }
    
    public boolean UsuarioDataOnDemand.modifyUsuario(Usuario obj) {
        return false;
    }
    
    public void UsuarioDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Usuario.findUsuarioEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Usuario' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Usuario>();
        for (int i = 0; i < 10; i++) {
            Usuario obj = getNewTransientUsuario(i);
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
