// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package main.web;

import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.persistence.PIIRILOIK;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PIIRILOIKController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String PIIRILOIKController.create(@Valid PIIRILOIK PIIRILOIK, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("PIIRILOIK", PIIRILOIK);
            return "piiriloiks/create";
        }
        uiModel.asMap().clear();
        PIIRILOIK.persist();
        return "redirect:/piiriloiks/" + encodeUrlPathSegment(PIIRILOIK.getPiiriloikId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String PIIRILOIKController.createForm(Model uiModel) {
        uiModel.addAttribute("PIIRILOIK", new PIIRILOIK());
        return "piiriloiks/create";
    }
    
    @RequestMapping(value = "/{piiriloikId}", method = RequestMethod.GET)
    public String PIIRILOIKController.show(@PathVariable("piiriloikId") Long piiriloikId, Model uiModel) {
        uiModel.addAttribute("piiriloik", PIIRILOIK.findPIIRILOIK(piiriloikId));
        uiModel.addAttribute("itemId", piiriloikId);
        return "piiriloiks/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String PIIRILOIKController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("piiriloiks", PIIRILOIK.findPIIRILOIKEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) PIIRILOIK.countPIIRILOIKS() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("piiriloiks", PIIRILOIK.findAllPIIRILOIKS());
        }
        return "piiriloiks/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String PIIRILOIKController.update(@Valid PIIRILOIK PIIRILOIK, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("PIIRILOIK", PIIRILOIK);
            return "piiriloiks/update";
        }
        uiModel.asMap().clear();
        PIIRILOIK.merge();
        return "redirect:/piiriloiks/" + encodeUrlPathSegment(PIIRILOIK.getPiiriloikId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{piiriloikId}", params = "form", method = RequestMethod.GET)
    public String PIIRILOIKController.updateForm(@PathVariable("piiriloikId") Long piiriloikId, Model uiModel) {
        uiModel.addAttribute("PIIRILOIK", PIIRILOIK.findPIIRILOIK(piiriloikId));
        return "piiriloiks/update";
    }
    
    @RequestMapping(value = "/{piiriloikId}", method = RequestMethod.DELETE)
    public String PIIRILOIKController.delete(@PathVariable("piiriloikId") Long piiriloikId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PIIRILOIK.findPIIRILOIK(piiriloikId).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/piiriloiks";
    }
    
    @ModelAttribute("piiriloiks")
    public Collection<PIIRILOIK> PIIRILOIKController.populatePIIRILOIKS() {
        return PIIRILOIK.findAllPIIRILOIKS();
    }
    
    String PIIRILOIKController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
