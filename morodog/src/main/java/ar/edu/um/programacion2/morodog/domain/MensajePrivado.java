package ar.edu.um.programacion2.morodog.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.validation.constraints.Min;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findMensajePrivadoesByIdUsuarioReceptorEquals", "findMensajePrivadoesByIdUsuarioEmisor" })
public class MensajePrivado {

    /**
     */
    @NotNull
    @Size(max = 140)
    private String texto;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecha;

    /**
     */
    @NotNull
    @DecimalMin("0")
    private Integer idUsuarioReceptor;

    /**
     */
    @NotNull
    @ManyToOne
    private Usuario idUsuarioEmisor;

    /**
     */
    @NotNull
    private Boolean enviado;
}
