package ar.edu.um.programacion2.morodog.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.persistence.Column;
import javax.persistence.Enumerated;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findUsuariosByActivoNot", "findUsuariosByApellidoLike", "findUsuariosByEMailLike", "findUsuariosByPasswordEquals", "findUsuariosByNombreUsuarioEquals" })
public class Usuario {

    /**
     */
    @NotNull
    @Size(max = 40)
    private String nombre;

    /**
     */
    @NotNull
    @Size(max = 40)
    private String apellido;

    /**
     */
    @NotNull
    @Size(max = 45)
    private String password;

    /**
     */
    @NotNull
    @Column(unique = true)
    @Size(max = 250)
    private String eMail;

    /**
     */
    @NotNull
    @Column(unique = true)
    @Size(max = 20)
    private String nombreUsuario;

    /**
     */
    @NotNull
    private Boolean activo;

    /**
     */
    @NotNull
    @Enumerated
    private Sexo sexo;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecha;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "usuario")
    private Set<Publicacion> publicacion = new HashSet<Publicacion>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "usuario")
    private Set<MensajePrivado> mensajePrivado = new HashSet<MensajePrivado>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "usuario")
    private Set<Vinculo> vinculo = new HashSet<Vinculo>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "usuario")
    private Set<RePublicacion> republucacion = new HashSet<RePublicacion>();

    /**
     */
    @OneToOne
    private User usuario;
}
