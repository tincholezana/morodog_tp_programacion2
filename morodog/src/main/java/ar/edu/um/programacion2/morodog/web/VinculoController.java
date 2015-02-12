package ar.edu.um.programacion2.morodog.web;
import ar.edu.um.programacion2.morodog.domain.Vinculo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.jquery.GvNIXWebJQuery;

@RequestMapping("/vinculoes")
@Controller
@RooWebScaffold(path = "vinculoes", formBackingObject = Vinculo.class)
@GvNIXWebJQuery
public class VinculoController {
}
