package main.web;

import org.persistence.VAHTKOND_INTSIDENDIS;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "vahtkond_intsidendiss", formBackingObject = VAHTKOND_INTSIDENDIS.class)
@RequestMapping("/vahtkond_intsidendiss")
@Controller
public class VAHTKOND_INTSIDENDISController {
}
