package ar.edu.um.programacion2.morodog.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.DecimalMin;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Vinculo {

    /**
     */
    @NotNull
    @Enumerated
    private Relacion relacion;

    /**
     */
    @NotNull
    @ManyToOne
    private Usuario IdUsuario;

    /**
     */
    @NotNull
    @DecimalMin("0")
    private Long idUsuarioRelacion;

}
