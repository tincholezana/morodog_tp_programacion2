package ar.edu.um.programacion2.morodog.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.ManyToOne;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findPublicacionsByTextoLike", "findPublicacionsByFechaBetween", "findPublicacionsByFechaGreaterThan", "findPublicacionsByFechaLessThan", "findPublicacionsByUsuario" })
public class Publicacion {

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
    @ManyToOne
    private Usuario usuario;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "publicacion")
    private Set<RePublicacion> rePublicacion = new HashSet<RePublicacion>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "publicacion")
    private Set<Link> link = new HashSet<Link>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "publicacion")
    private Set<Tendencia> tendencia = new HashSet<Tendencia>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Link> links = new HashSet<Link>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Tendencia> tendencias = new HashSet<Tendencia>();
}
