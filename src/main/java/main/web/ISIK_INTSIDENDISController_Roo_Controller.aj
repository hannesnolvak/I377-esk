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
import org.persistence.INTSIDENT;
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

privileged aspect ISIK_INTSIDENDISController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String ISIK_INTSIDENDISController.create(@Valid ISIK_INTSIDENDIS ISIK_INTSIDENDIS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("ISIK_INTSIDENDIS", ISIK_INTSIDENDIS);
            return "isik_intsidendiss/create";
        }
        uiModel.asMap().clear();
        ISIK_INTSIDENDIS.persist();
        return "redirect:/isik_intsidendiss/" + encodeUrlPathSegment(ISIK_INTSIDENDIS.getIsikIntsidendisId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String ISIK_INTSIDENDISController.createForm(Model uiModel) {
        uiModel.addAttribute("ISIK_INTSIDENDIS", new ISIK_INTSIDENDIS());
        return "isik_intsidendiss/create";
    }
    
    @RequestMapping(value = "/{isikIntsidendisId}", method = RequestMethod.GET)
    public String ISIK_INTSIDENDISController.show(@PathVariable("isikIntsidendisId") Long isikIntsidendisId, Model uiModel) {
        uiModel.addAttribute("isik_intsidendis", ISIK_INTSIDENDIS.findISIK_INTSIDENDIS(isikIntsidendisId));
        uiModel.addAttribute("itemId", isikIntsidendisId);
        return "isik_intsidendiss/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String ISIK_INTSIDENDISController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("isik_intsidendiss", ISIK_INTSIDENDIS.findISIK_INTSIDENDISEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) ISIK_INTSIDENDIS.countISIK_INTSIDENDISs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("isik_intsidendiss", ISIK_INTSIDENDIS.findAllISIK_INTSIDENDISs());
        }
        return "isik_intsidendiss/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String ISIK_INTSIDENDISController.update(@Valid ISIK_INTSIDENDIS ISIK_INTSIDENDIS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("ISIK_INTSIDENDIS", ISIK_INTSIDENDIS);
            return "isik_intsidendiss/update";
        }
        uiModel.asMap().clear();
        ISIK_INTSIDENDIS.merge();
        return "redirect:/isik_intsidendiss/" + encodeUrlPathSegment(ISIK_INTSIDENDIS.getIsikIntsidendisId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{isikIntsidendisId}", params = "form", method = RequestMethod.GET)
    public String ISIK_INTSIDENDISController.updateForm(@PathVariable("isikIntsidendisId") Long isikIntsidendisId, Model uiModel) {
        uiModel.addAttribute("ISIK_INTSIDENDIS", ISIK_INTSIDENDIS.findISIK_INTSIDENDIS(isikIntsidendisId));
        return "isik_intsidendiss/update";
    }
    
    @RequestMapping(value = "/{isikIntsidendisId}", method = RequestMethod.DELETE)
    public String ISIK_INTSIDENDISController.delete(@PathVariable("isikIntsidendisId") Long isikIntsidendisId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ISIK_INTSIDENDIS.findISIK_INTSIDENDIS(isikIntsidendisId).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/isik_intsidendiss";
    }
    
    @ModelAttribute("intsidents")
    public Collection<INTSIDENT> ISIK_INTSIDENDISController.populateINTSIDENTS() {
        return INTSIDENT.findAllINTSIDENTS();
    }
    
    @ModelAttribute("isik_intsidendiss")
    public Collection<ISIK_INTSIDENDIS> ISIK_INTSIDENDISController.populateISIK_INTSIDENDISs() {
        return ISIK_INTSIDENDIS.findAllISIK_INTSIDENDISs();
    }
    
    @ModelAttribute("piiririkkujas")
    public Collection<PIIRIRIKKUJA> ISIK_INTSIDENDISController.populatePIIRIRIKKUJAS() {
        return PIIRIRIKKUJA.findAllPIIRIRIKKUJAS();
    }
    
    String ISIK_INTSIDENDISController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
