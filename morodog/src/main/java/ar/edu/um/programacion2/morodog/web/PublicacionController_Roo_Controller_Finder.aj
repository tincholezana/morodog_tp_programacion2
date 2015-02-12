// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.web;

import ar.edu.um.programacion2.morodog.domain.Publicacion;
import ar.edu.um.programacion2.morodog.domain.Usuario;
import ar.edu.um.programacion2.morodog.web.PublicacionController;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect PublicacionController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByFechaBetween", "form" }, method = RequestMethod.GET)
    public String PublicacionController.findPublicacionsByFechaBetweenForm(Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        return "publicacions/findPublicacionsByFechaBetween";
    }
    
    @RequestMapping(params = "find=ByFechaBetween", method = RequestMethod.GET)
    public String PublicacionController.findPublicacionsByFechaBetween(@RequestParam("minFecha") @DateTimeFormat(style = "M-") Date minFecha, @RequestParam("maxFecha") @DateTimeFormat(style = "M-") Date maxFecha, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("publicacions", Publicacion.findPublicacionsByFechaBetween(minFecha, maxFecha, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) Publicacion.countFindPublicacionsByFechaBetween(minFecha, maxFecha) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("publicacions", Publicacion.findPublicacionsByFechaBetween(minFecha, maxFecha, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "publicacions/list";
    }
    
    @RequestMapping(params = { "find=ByFechaGreaterThan", "form" }, method = RequestMethod.GET)
    public String PublicacionController.findPublicacionsByFechaGreaterThanForm(Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        return "publicacions/findPublicacionsByFechaGreaterThan";
    }
    
    @RequestMapping(params = "find=ByFechaGreaterThan", method = RequestMethod.GET)
    public String PublicacionController.findPublicacionsByFechaGreaterThan(@RequestParam("fecha") @DateTimeFormat(style = "M-") Date fecha, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("publicacions", Publicacion.findPublicacionsByFechaGreaterThan(fecha, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) Publicacion.countFindPublicacionsByFechaGreaterThan(fecha) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("publicacions", Publicacion.findPublicacionsByFechaGreaterThan(fecha, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "publicacions/list";
    }
    
    @RequestMapping(params = { "find=ByFechaLessThan", "form" }, method = RequestMethod.GET)
    public String PublicacionController.findPublicacionsByFechaLessThanForm(Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        return "publicacions/findPublicacionsByFechaLessThan";
    }
    
    @RequestMapping(params = "find=ByFechaLessThan", method = RequestMethod.GET)
    public String PublicacionController.findPublicacionsByFechaLessThan(@RequestParam("fecha") @DateTimeFormat(style = "M-") Date fecha, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("publicacions", Publicacion.findPublicacionsByFechaLessThan(fecha, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) Publicacion.countFindPublicacionsByFechaLessThan(fecha) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("publicacions", Publicacion.findPublicacionsByFechaLessThan(fecha, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "publicacions/list";
    }
    
    @RequestMapping(params = { "find=ByTextoLike", "form" }, method = RequestMethod.GET)
    public String PublicacionController.findPublicacionsByTextoLikeForm(Model uiModel) {
        return "publicacions/findPublicacionsByTextoLike";
    }
    
    @RequestMapping(params = "find=ByTextoLike", method = RequestMethod.GET)
    public String PublicacionController.findPublicacionsByTextoLike(@RequestParam("texto") String texto, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("publicacions", Publicacion.findPublicacionsByTextoLike(texto, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) Publicacion.countFindPublicacionsByTextoLike(texto) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("publicacions", Publicacion.findPublicacionsByTextoLike(texto, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "publicacions/list";
    }
    
    @RequestMapping(params = { "find=ByUsuario", "form" }, method = RequestMethod.GET)
    public String PublicacionController.findPublicacionsByUsuarioForm(Model uiModel) {
        uiModel.addAttribute("usuarios", Usuario.findAllUsuarios());
        return "publicacions/findPublicacionsByUsuario";
    }
    
    @RequestMapping(params = "find=ByUsuario", method = RequestMethod.GET)
    public String PublicacionController.findPublicacionsByUsuario(@RequestParam("usuario") Usuario usuario, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("publicacions", Publicacion.findPublicacionsByUsuario(usuario, sortFieldName, sortOrder).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) Publicacion.countFindPublicacionsByUsuario(usuario) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("publicacions", Publicacion.findPublicacionsByUsuario(usuario, sortFieldName, sortOrder).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "publicacions/list";
    }
    
}