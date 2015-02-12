package ar.edu.um.programacion2.morodog.web;
import ar.edu.um.programacion2.morodog.domain.Usuario;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;
import org.gvnix.addon.web.mvc.jquery.GvNIXWebJQuery;

@RequestMapping("/usuarios")
@Controller
@RooWebScaffold(path = "usuarios", formBackingObject = Usuario.class)
@RooWebFinder
@GvNIXWebJQuery
public class UsuarioController {
}
