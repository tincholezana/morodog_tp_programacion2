package ar.edu.um.programacion2.morodog.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findConfiguracionsByNDiasEmail", "findConfiguracionsByNDiasTendencia" })
public class Configuracion {

    /**
     */
    private int nDiasEmail;

    /**
     */
    private int nDiasTendencia;
}
