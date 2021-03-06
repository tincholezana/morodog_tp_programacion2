// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.web;

import ar.edu.um.programacion2.morodog.domain.Link;
import ar.edu.um.programacion2.morodog.domain.Publicacion;
import ar.edu.um.programacion2.morodog.web.LinkController;
import java.util.Set;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect LinkController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByNombreEquals", "form" }, method = RequestMethod.GET)
    public String LinkController.findLinksByNombreEqualsForm(Model uiModel) {
        return "links/findLinksByNombreEquals";
    }
    
    @RequestMapping(params = "find=ByNombreEquals", method = RequestMethod.GET)
    public String LinkController.findLinksByNombreEquals(@RequestParam("nombre") String nombre, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("links", Link.findLinksByNombreEquals(nombre, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) Link.countFindLinksByNombreEquals(nombre) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("links", Link.findLinksByNombreEquals(nombre, sortFieldName, sortOrder).getResultList());
        }
        return "links/list";
    }
    
    @RequestMapping(params = { "find=ByPublicacion", "form" }, method = RequestMethod.GET)
    public String LinkController.findLinksByPublicacionForm(Model uiModel) {
        uiModel.addAttribute("publicacions", Publicacion.findAllPublicacions());
        return "links/findLinksByPublicacion";
    }
    
    @RequestMapping(params = "find=ByPublicacion", method = RequestMethod.GET)
    public String LinkController.findLinksByPublicacion(@RequestParam("publicacion") Set<Publicacion> publicacion, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("links", Link.findLinksByPublicacion(publicacion, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) Link.countFindLinksByPublicacion(publicacion) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("links", Link.findLinksByPublicacion(publicacion, sortFieldName, sortOrder).getResultList());
        }
        return "links/list";
    }
    
    @RequestMapping(params = { "find=ByUrlEquals", "form" }, method = RequestMethod.GET)
    public String LinkController.findLinksByUrlEqualsForm(Model uiModel) {
        return "links/findLinksByUrlEquals";
    }
    
    @RequestMapping(params = "find=ByUrlEquals", method = RequestMethod.GET)
    public String LinkController.findLinksByUrlEquals(@RequestParam("url") String url, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("links", Link.findLinksByUrlEquals(url, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) Link.countFindLinksByUrlEquals(url) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("links", Link.findLinksByUrlEquals(url, sortFieldName, sortOrder).getResultList());
        }
        return "links/list";
    }
    
}
