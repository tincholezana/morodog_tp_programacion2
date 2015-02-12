package ar.edu.um.programacion2.morodog.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findRePublicacionsByIdUsuario", "findRePublicacionsByPublicacion", "findRePublicacionsByFechaBetween" })
public class RePublicacion {

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecha;

    /**
     */
    @NotNull
    @ManyToOne
    private Usuario idUsuario;

    /**
     */
    @NotNull
    @ManyToOne
    private Publicacion publicacion;
}
