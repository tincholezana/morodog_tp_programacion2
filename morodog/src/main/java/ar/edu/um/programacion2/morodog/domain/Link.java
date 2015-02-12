package ar.edu.um.programacion2.morodog.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findLinksByNombreEquals", "findLinksByUrlEquals", "findLinksByPublicacion" })
public class Link {

    /**
     */
    @NotNull
    @Column(unique = true)
    @Size(max = 50)
    private String nombre;

    /**
     */
    @NotNull
    private String url;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Publicacion> publicacion = new HashSet<Publicacion>();
}
