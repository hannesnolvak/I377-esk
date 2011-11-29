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
import org.persistence.ISIK_INTSIDENDIS;
import org.persistence.PIIRIRIKKUJA;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PIIRIRIKKUJAController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String PIIRIRIKKUJAController.create(@Valid PIIRIRIKKUJA PIIRIRIKKUJA, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("PIIRIRIKKUJA", PIIRIRIKKUJA);
            return "piiririkkujas/create";
        }
        uiModel.asMap().clear();
        PIIRIRIKKUJA.persist();
        return "redirect:/piiririkkujas/" + encodeUrlPathSegment(PIIRIRIKKUJA.getPiiririkkujaId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String PIIRIRIKKUJAController.createForm(Model uiModel) {
        uiModel.addAttribute("PIIRIRIKKUJA", new PIIRIRIKKUJA());
        return "piiririkkujas/create";
    }
    
    @RequestMapping(value = "/{piiririkkujaId}", method = RequestMethod.GET)
    public String PIIRIRIKKUJAController.show(@PathVariable("piiririkkujaId") Long piiririkkujaId, Model uiModel) {
        uiModel.addAttribute("piiririkkuja", PIIRIRIKKUJA.findPIIRIRIKKUJA(piiririkkujaId));
        uiModel.addAttribute("itemId", piiririkkujaId);
        return "piiririkkujas/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String PIIRIRIKKUJAController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("piiririkkujas", PIIRIRIKKUJA.findPIIRIRIKKUJAEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) PIIRIRIKKUJA.countPIIRIRIKKUJAS() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("piiririkkujas", PIIRIRIKKUJA.findAllPIIRIRIKKUJAS());
        }
        return "piiririkkujas/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String PIIRIRIKKUJAController.update(@Valid PIIRIRIKKUJA PIIRIRIKKUJA, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("PIIRIRIKKUJA", PIIRIRIKKUJA);
            return "piiririkkujas/update";
        }
        uiModel.asMap().clear();
        PIIRIRIKKUJA.merge();
        return "redirect:/piiririkkujas/" + encodeUrlPathSegment(PIIRIRIKKUJA.getPiiririkkujaId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{piiririkkujaId}", params = "form", method = RequestMethod.GET)
    public String PIIRIRIKKUJAController.updateForm(@PathVariable("piiririkkujaId") Long piiririkkujaId, Model uiModel) {
        uiModel.addAttribute("PIIRIRIKKUJA", PIIRIRIKKUJA.findPIIRIRIKKUJA(piiririkkujaId));
        return "piiririkkujas/update";
    }
    
    @RequestMapping(value = "/{piiririkkujaId}", method = RequestMethod.DELETE)
    public String PIIRIRIKKUJAController.delete(@PathVariable("piiririkkujaId") Long piiririkkujaId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PIIRIRIKKUJA.findPIIRIRIKKUJA(piiririkkujaId).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/piiririkkujas";
    }
    
    @ModelAttribute("isik_intsidendiss")
    public Collection<ISIK_INTSIDENDIS> PIIRIRIKKUJAController.populateISIK_INTSIDENDISs() {
        return ISIK_INTSIDENDIS.findAllISIK_INTSIDENDISs();
    }
    
    @ModelAttribute("piiririkkujas")
    public Collection<PIIRIRIKKUJA> PIIRIRIKKUJAController.populatePIIRIRIKKUJAS() {
        return PIIRIRIKKUJA.findAllPIIRIRIKKUJAS();
    }
    
    String PIIRIRIKKUJAController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
