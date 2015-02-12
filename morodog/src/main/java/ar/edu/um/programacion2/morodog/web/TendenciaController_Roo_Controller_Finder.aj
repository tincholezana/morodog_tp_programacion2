// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.web;

import ar.edu.um.programacion2.morodog.domain.Publicacion;
import ar.edu.um.programacion2.morodog.domain.Tendencia;
import ar.edu.um.programacion2.morodog.web.TendenciaController;
import java.util.Set;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect TendenciaController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByNombreEquals", "form" }, method = RequestMethod.GET)
    public String TendenciaController.findTendenciasByNombreEqualsForm(Model uiModel) {
        return "tendencias/findTendenciasByNombreEquals";
    }
    
    @RequestMapping(params = "find=ByNombreEquals", method = RequestMethod.GET)
    public String TendenciaController.findTendenciasByNombreEquals(@RequestParam("nombre") String nombre, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("tendencias", Tendencia.findTendenciasByNombreEquals(nombre, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) Tendencia.countFindTendenciasByNombreEquals(nombre) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("tendencias", Tendencia.findTendenciasByNombreEquals(nombre, sortFieldName, sortOrder).getResultList());
        }
        return "tendencias/list";
    }
    
    @RequestMapping(params = { "find=ByPublicacion", "form" }, method = RequestMethod.GET)
    public String TendenciaController.findTendenciasByPublicacionForm(Model uiModel) {
        uiModel.addAttribute("publicacions", Publicacion.findAllPublicacions());
        return "tendencias/findTendenciasByPublicacion";
    }
    
    @RequestMapping(params = "find=ByPublicacion", method = RequestMethod.GET)
    public String TendenciaController.findTendenciasByPublicacion(@RequestParam("publicacion") Set<Publicacion> publicacion, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("tendencias", Tendencia.findTendenciasByPublicacion(publicacion, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) Tendencia.countFindTendenciasByPublicacion(publicacion) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("tendencias", Tendencia.findTendenciasByPublicacion(publicacion, sortFieldName, sortOrder).getResultList());
        }
        return "tendencias/list";
    }
    
}