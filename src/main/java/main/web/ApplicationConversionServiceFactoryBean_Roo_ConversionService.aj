// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package main.web;

import java.lang.String;
import main.entities.AdminAlluvus;
import main.entities.Amet;
import main.entities.AmetPiiripunkti;
import main.entities.AmetVaeosa;
import main.entities.Auaste;
import main.entities.AuastmeMuutumine;
import main.entities.IntsidendiLiik;
import main.entities.Intsident;
import main.entities.IsikIntsidendi;
import main.entities.IsikuSeadusIntsidendi;
import main.entities.Kodakondsus;
import main.entities.KontaktiLiik;
import main.entities.Objekt;
import main.entities.ObjektIntsidendi;
import main.entities.ObjektiLiik;
import main.entities.ObjektiSeadusIntsidendi;
import main.entities.OrgYksus;
import main.entities.PiiriloiguHaldaja;
import main.entities.Piiriloik;
import main.entities.Piiripunkt;
import main.entities.PiiripunktiAlluvus;
import main.entities.PiiripunktiOrgYksus;
import main.entities.Piiririkkuja;
import main.entities.Piirivalvur;
import main.entities.PiirivalvurIntsidendi;
import main.entities.PiirivalvurPiiripunkti;
import main.entities.PiirivalvurVaeosa;
import main.entities.PiirivalvurVodikohal;
import main.entities.PiirivalvuriKontakt;
import main.entities.PiirivalvuriSeadusIntsidendi;
import main.entities.RiigiAdminYksus;
import main.entities.RiigiAdminYksuseLiik;
import main.entities.Riik;
import main.entities.Ruumiyksus;
import main.entities.RuumiyksuseLiik;
import main.entities.Seadus;
import main.entities.SeadusePunkt;
import main.entities.SeotudKontaktisik;
import main.entities.SuguluseRolliLiik;
import main.entities.Vaeosa;
import main.entities.VaeosaAlluvus;
import main.entities.Vahtkond;
import main.entities.VahtkondIntsidendi;
import main.entities.VahtkonnaLiige;
import main.entities.VahtkonndPiiriloigul;
import main.entities.VoimalikAlluvus;
import main.entities.Voodikoht;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(new AdminAlluvusConverter());
        registry.addConverter(new AmetConverter());
        registry.addConverter(new AmetPiiripunktiConverter());
        registry.addConverter(new AmetVaeosaConverter());
        registry.addConverter(new AuasteConverter());
        registry.addConverter(new AuastmeMuutumineConverter());
        registry.addConverter(new IntsidendiLiikConverter());
        registry.addConverter(new IntsidentConverter());
        registry.addConverter(new IsikIntsidendiConverter());
        registry.addConverter(new IsikuSeadusIntsidendiConverter());
        registry.addConverter(new KodakondsusConverter());
        registry.addConverter(new KontaktiLiikConverter());
        registry.addConverter(new ObjektConverter());
        registry.addConverter(new ObjektIntsidendiConverter());
        registry.addConverter(new ObjektiLiikConverter());
        registry.addConverter(new ObjektiSeadusIntsidendiConverter());
        registry.addConverter(new OrgYksusConverter());
        registry.addConverter(new PiiriloiguHaldajaConverter());
        registry.addConverter(new PiiriloikConverter());
        registry.addConverter(new PiiripunktConverter());
        registry.addConverter(new PiiripunktiAlluvusConverter());
        registry.addConverter(new PiiripunktiOrgYksusConverter());
        registry.addConverter(new PiiririkkujaConverter());
        registry.addConverter(new PiirivalvurConverter());
        registry.addConverter(new PiirivalvurIntsidendiConverter());
        registry.addConverter(new PiirivalvurPiiripunktiConverter());
        registry.addConverter(new PiirivalvurVaeosaConverter());
        registry.addConverter(new PiirivalvurVodikohalConverter());
        registry.addConverter(new PiirivalvuriKontaktConverter());
        registry.addConverter(new PiirivalvuriSeadusIntsidendiConverter());
        registry.addConverter(new RiigiAdminYksusConverter());
        registry.addConverter(new RiigiAdminYksuseLiikConverter());
        registry.addConverter(new RiikConverter());
        registry.addConverter(new RuumiyksusConverter());
        registry.addConverter(new RuumiyksuseLiikConverter());
        registry.addConverter(new SeadusConverter());
        registry.addConverter(new SeadusePunktConverter());
        registry.addConverter(new SeotudKontaktisikConverter());
        registry.addConverter(new SuguluseRolliLiikConverter());
        registry.addConverter(new VaeosaConverter());
        registry.addConverter(new VaeosaAlluvusConverter());
        registry.addConverter(new VahtkondConverter());
        registry.addConverter(new VahtkondIntsidendiConverter());
        registry.addConverter(new VahtkonnaLiigeConverter());
        registry.addConverter(new VahtkonndPiiriloigulConverter());
        registry.addConverter(new VoimalikAlluvusConverter());
        registry.addConverter(new VoodikohtConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.AdminAlluvusConverter implements Converter<AdminAlluvus, String> {
        public String convert(AdminAlluvus adminAlluvus) {
            return new StringBuilder().append(adminAlluvus.getAdminAlluvusId()).append(" ").append(adminAlluvus.getAlates()).append(" ").append(adminAlluvus.getAvaja()).append(" ").append(adminAlluvus.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.AmetConverter implements Converter<Amet, String> {
        public String convert(Amet amet) {
            return new StringBuilder().append(amet.getAmetId()).append(" ").append(amet.getAvaja()).append(" ").append(amet.getAvatud()).append(" ").append(amet.getIscoKood()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.AmetPiiripunktiConverter implements Converter<AmetPiiripunkti, String> {
        public String convert(AmetPiiripunkti ametPiiripunkti) {
            return new StringBuilder().append(ametPiiripunkti.getAmetPiiripunktisId()).append(" ").append(ametPiiripunkti.getAlates()).append(" ").append(ametPiiripunkti.getAvaja()).append(" ").append(ametPiiripunkti.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.AmetVaeosaConverter implements Converter<AmetVaeosa, String> {
        public String convert(AmetVaeosa ametVaeosa) {
            return new StringBuilder().append(ametVaeosa.getAmetVaeosasId()).append(" ").append(ametVaeosa.getAlates()).append(" ").append(ametVaeosa.getAvaja()).append(" ").append(ametVaeosa.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.AuasteConverter implements Converter<Auaste, String> {
        public String convert(Auaste auaste) {
            return new StringBuilder().append(auaste.getAuasteId()).append(" ").append(auaste.getAvaja()).append(" ").append(auaste.getAvatud()).append(" ").append(auaste.getKommentaar()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.AuastmeMuutumineConverter implements Converter<AuastmeMuutumine, String> {
        public String convert(AuastmeMuutumine auastmeMuutumine) {
            return new StringBuilder().append(auastmeMuutumine.getAuastmeMuutumineId()).append(" ").append(auastmeMuutumine.getAlates()).append(" ").append(auastmeMuutumine.getAvaja()).append(" ").append(auastmeMuutumine.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.IntsidendiLiikConverter implements Converter<IntsidendiLiik, String> {
        public String convert(IntsidendiLiik intsidendiLiik) {
            return new StringBuilder().append(intsidendiLiik.getIntsidendiLiikId()).append(" ").append(intsidendiLiik.getAvaja()).append(" ").append(intsidendiLiik.getAvatud()).append(" ").append(intsidendiLiik.getKommentaar()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.IntsidentConverter implements Converter<Intsident, String> {
        public String convert(Intsident intsident) {
            return new StringBuilder().append(intsident.getIntsidentId()).append(" ").append(intsident.getAvaja()).append(" ").append(intsident.getAvatud()).append(" ").append(intsident.getGpsLatituud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.IsikIntsidendiConverter implements Converter<IsikIntsidendi, String> {
        public String convert(IsikIntsidendi isikIntsidendi) {
            return new StringBuilder().append(isikIntsidendi.getIsikIntsidendisId()).append(" ").append(isikIntsidendi.getAlates()).append(" ").append(isikIntsidendi.getAvaja()).append(" ").append(isikIntsidendi.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.IsikuSeadusIntsidendiConverter implements Converter<IsikuSeadusIntsidendi, String> {
        public String convert(IsikuSeadusIntsidendi isikuSeadusIntsidendi) {
            return new StringBuilder().append(isikuSeadusIntsidendi.getIsikuSeadusIntsidendisId()).append(" ").append(isikuSeadusIntsidendi.getAlates()).append(" ").append(isikuSeadusIntsidendi.getAvaja()).append(" ").append(isikuSeadusIntsidendi.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.KodakondsusConverter implements Converter<Kodakondsus, String> {
        public String convert(Kodakondsus kodakondsus) {
            return new StringBuilder().append(kodakondsus.getKodakondsusId()).append(" ").append(kodakondsus.getAlates()).append(" ").append(kodakondsus.getAvaja()).append(" ").append(kodakondsus.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.KontaktiLiikConverter implements Converter<KontaktiLiik, String> {
        public String convert(KontaktiLiik kontaktiLiik) {
            return new StringBuilder().append(kontaktiLiik.getKontaktiLiikId()).append(" ").append(kontaktiLiik.getAvaja()).append(" ").append(kontaktiLiik.getAvatud()).append(" ").append(kontaktiLiik.getKommentaar()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.ObjektConverter implements Converter<Objekt, String> {
        public String convert(Objekt objekt) {
            return new StringBuilder().append(objekt.getObjektId()).append(" ").append(objekt.getAvaja()).append(" ").append(objekt.getAvatud()).append(" ").append(objekt.getMuudetud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.ObjektIntsidendiConverter implements Converter<ObjektIntsidendi, String> {
        public String convert(ObjektIntsidendi objektIntsidendi) {
            return new StringBuilder().append(objektIntsidendi.getObjektIntsidendisId()).append(" ").append(objektIntsidendi.getAlates()).append(" ").append(objektIntsidendi.getAvaja()).append(" ").append(objektIntsidendi.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.ObjektiLiikConverter implements Converter<ObjektiLiik, String> {
        public String convert(ObjektiLiik objektiLiik) {
            return new StringBuilder().append(objektiLiik.getObjektLiikId()).append(" ").append(objektiLiik.getAvaja()).append(" ").append(objektiLiik.getAvatud()).append(" ").append(objektiLiik.getKood()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.ObjektiSeadusIntsidendiConverter implements Converter<ObjektiSeadusIntsidendi, String> {
        public String convert(ObjektiSeadusIntsidendi objektiSeadusIntsidendi) {
            return new StringBuilder().append(objektiSeadusIntsidendi.getObjektiSeadusIntsidendisId()).append(" ").append(objektiSeadusIntsidendi.getAlates()).append(" ").append(objektiSeadusIntsidendi.getAvaja()).append(" ").append(objektiSeadusIntsidendi.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.OrgYksusConverter implements Converter<OrgYksus, String> {
        public String convert(OrgYksus orgYksus) {
            return new StringBuilder().append(orgYksus.getOrgYksusId()).append(" ").append(orgYksus.getAlates()).append(" ").append(orgYksus.getAvaja()).append(" ").append(orgYksus.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.PiiriloiguHaldajaConverter implements Converter<PiiriloiguHaldaja, String> {
        public String convert(PiiriloiguHaldaja piiriloiguHaldaja) {
            return new StringBuilder().append(piiriloiguHaldaja.getPiiriloiguHaldajaId()).append(" ").append(piiriloiguHaldaja.getAlates()).append(" ").append(piiriloiguHaldaja.getAvaja()).append(" ").append(piiriloiguHaldaja.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.PiiriloikConverter implements Converter<Piiriloik, String> {
        public String convert(Piiriloik piiriloik) {
            return new StringBuilder().append(piiriloik.getPiiriloikId()).append(" ").append(piiriloik.getAvaja()).append(" ").append(piiriloik.getAvatud()).append(" ").append(piiriloik.getGpsKoordinaadid()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.PiiripunktConverter implements Converter<Piiripunkt, String> {
        public String convert(Piiripunkt piiripunkt) {
            return new StringBuilder().append(piiripunkt.getPiiripunktId()).append(" ").append(piiripunkt.getAlates()).append(" ").append(piiripunkt.getAvaja()).append(" ").append(piiripunkt.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.PiiripunktiAlluvusConverter implements Converter<PiiripunktiAlluvus, String> {
        public String convert(PiiripunktiAlluvus piiripunktiAlluvus) {
            return new StringBuilder().append(piiripunktiAlluvus.getPiiripunktiAlluvusId()).append(" ").append(piiripunktiAlluvus.getAlates()).append(" ").append(piiripunktiAlluvus.getAvaja()).append(" ").append(piiripunktiAlluvus.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.PiiripunktiOrgYksusConverter implements Converter<PiiripunktiOrgYksus, String> {
        public String convert(PiiripunktiOrgYksus piiripunktiOrgYksus) {
            return new StringBuilder().append(piiripunktiOrgYksus.getPiiripunktiOrgYksusId()).append(" ").append(piiripunktiOrgYksus.getAlates()).append(" ").append(piiripunktiOrgYksus.getAvaja()).append(" ").append(piiripunktiOrgYksus.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.PiiririkkujaConverter implements Converter<Piiririkkuja, String> {
        public String convert(Piiririkkuja piiririkkuja) {
            return new StringBuilder().append(piiririkkuja.getPiiririkkujaId()).append(" ").append(piiririkkuja.getAvaja()).append(" ").append(piiririkkuja.getAvatud()).append(" ").append(piiririkkuja.getEesnimi()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.PiirivalvurConverter implements Converter<Piirivalvur, String> {
        public String convert(Piirivalvur piirivalvur) {
            return new StringBuilder().append(piirivalvur.getPiirivalvurId()).append(" ").append(piirivalvur.getAvaja()).append(" ").append(piirivalvur.getAvatud()).append(" ").append(piirivalvur.getEesnimed()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.PiirivalvurIntsidendiConverter implements Converter<PiirivalvurIntsidendi, String> {
        public String convert(PiirivalvurIntsidendi piirivalvurIntsidendi) {
            return new StringBuilder().append(piirivalvurIntsidendi.getPiirivalvurIntsidendisId()).append(" ").append(piirivalvurIntsidendi.getAlates()).append(" ").append(piirivalvurIntsidendi.getAvaja()).append(" ").append(piirivalvurIntsidendi.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.PiirivalvurPiiripunktiConverter implements Converter<PiirivalvurPiiripunkti, String> {
        public String convert(PiirivalvurPiiripunkti piirivalvurPiiripunkti) {
            return new StringBuilder().append(piirivalvurPiiripunkti.getPiirivalvurPiiripunktisId()).append(" ").append(piirivalvurPiiripunkti.getAlates()).append(" ").append(piirivalvurPiiripunkti.getAvaja()).append(" ").append(piirivalvurPiiripunkti.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.PiirivalvurVaeosaConverter implements Converter<PiirivalvurVaeosa, String> {
        public String convert(PiirivalvurVaeosa piirivalvurVaeosa) {
            return new StringBuilder().append(piirivalvurVaeosa.getPiirivalvurVaeosasId()).append(" ").append(piirivalvurVaeosa.getAlates()).append(" ").append(piirivalvurVaeosa.getAvaja()).append(" ").append(piirivalvurVaeosa.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.PiirivalvurVodikohalConverter implements Converter<PiirivalvurVodikohal, String> {
        public String convert(PiirivalvurVodikohal piirivalvurVodikohal) {
            return new StringBuilder().append(piirivalvurVodikohal.getId()).append(" ").append(piirivalvurVodikohal.getAlates()).append(" ").append(piirivalvurVodikohal.getAvaja()).append(" ").append(piirivalvurVodikohal.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.PiirivalvuriKontaktConverter implements Converter<PiirivalvuriKontakt, String> {
        public String convert(PiirivalvuriKontakt piirivalvuriKontakt) {
            return new StringBuilder().append(piirivalvuriKontakt.getPiirivalvuriKontaktId()).append(" ").append(piirivalvuriKontakt.getAlates()).append(" ").append(piirivalvuriKontakt.getAvaja()).append(" ").append(piirivalvuriKontakt.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.PiirivalvuriSeadusIntsidendiConverter implements Converter<PiirivalvuriSeadusIntsidendi, String> {
        public String convert(PiirivalvuriSeadusIntsidendi piirivalvuriSeadusIntsidendi) {
            return new StringBuilder().append(piirivalvuriSeadusIntsidendi.getPiirivalvuriSeadusIntsidendi()).append(" ").append(piirivalvuriSeadusIntsidendi.getAlates()).append(" ").append(piirivalvuriSeadusIntsidendi.getAvaja()).append(" ").append(piirivalvuriSeadusIntsidendi.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.RiigiAdminYksusConverter implements Converter<RiigiAdminYksus, String> {
        public String convert(RiigiAdminYksus riigiAdminYksus) {
            return new StringBuilder().append(riigiAdminYksus.getRiigiAdminYksusId()).append(" ").append(riigiAdminYksus.getAlates()).append(" ").append(riigiAdminYksus.getAvaja()).append(" ").append(riigiAdminYksus.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.RiigiAdminYksuseLiikConverter implements Converter<RiigiAdminYksuseLiik, String> {
        public String convert(RiigiAdminYksuseLiik riigiAdminYksuseLiik) {
            return new StringBuilder().append(riigiAdminYksuseLiik.getRiigiAdminYksuseLikId()).append(" ").append(riigiAdminYksuseLiik.getAlates()).append(" ").append(riigiAdminYksuseLiik.getAvaja()).append(" ").append(riigiAdminYksuseLiik.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.RiikConverter implements Converter<Riik, String> {
        public String convert(Riik riik) {
            return new StringBuilder().append(riik.getRiikId()).append(" ").append(riik.getAnsiKood()).append(" ").append(riik.getAvaja()).append(" ").append(riik.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.RuumiyksusConverter implements Converter<Ruumiyksus, String> {
        public String convert(Ruumiyksus ruumiyksus) {
            return new StringBuilder().append(ruumiyksus.getRuumiyksusId()).append(" ").append(ruumiyksus.getAadress()).append(" ").append(ruumiyksus.getAvaja()).append(" ").append(ruumiyksus.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.RuumiyksuseLiikConverter implements Converter<RuumiyksuseLiik, String> {
        public String convert(RuumiyksuseLiik ruumiyksuseLiik) {
            return new StringBuilder().append(ruumiyksuseLiik.getRuumiyksuseLiikId()).append(" ").append(ruumiyksuseLiik.getAvaja()).append(" ").append(ruumiyksuseLiik.getAvatud()).append(" ").append(ruumiyksuseLiik.getKommentaar()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.SeadusConverter implements Converter<Seadus, String> {
        public String convert(Seadus seadus) {
            return new StringBuilder().append(seadus.getSeaduseId()).append(" ").append(seadus.getAvaja()).append(" ").append(seadus.getAvatud()).append(" ").append(seadus.getKehtivAlates()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.SeadusePunktConverter implements Converter<SeadusePunkt, String> {
        public String convert(SeadusePunkt seadusePunkt) {
            return new StringBuilder().append(seadusePunkt.getSeadusePunktId()).append(" ").append(seadusePunkt.getAvaja()).append(" ").append(seadusePunkt.getAvatud()).append(" ").append(seadusePunkt.getKehtivAlates()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.SeotudKontaktisikConverter implements Converter<SeotudKontaktisik, String> {
        public String convert(SeotudKontaktisik seotudKontaktisik) {
            return new StringBuilder().append(seotudKontaktisik.getPiirivalvuriKontaktId()).append(" ").append(seotudKontaktisik.getAlates()).append(" ").append(seotudKontaktisik.getAvaja()).append(" ").append(seotudKontaktisik.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.SuguluseRolliLiikConverter implements Converter<SuguluseRolliLiik, String> {
        public String convert(SuguluseRolliLiik suguluseRolliLiik) {
            return new StringBuilder().append(suguluseRolliLiik.getSuguluseRolliLiikId()).append(" ").append(suguluseRolliLiik.getAvaja()).append(" ").append(suguluseRolliLiik.getAvatud()).append(" ").append(suguluseRolliLiik.getKommentaar()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.VaeosaConverter implements Converter<Vaeosa, String> {
        public String convert(Vaeosa vaeosa) {
            return new StringBuilder().append(vaeosa.getVaeosaIdId()).append(" ").append(vaeosa.getAlates()).append(" ").append(vaeosa.getAvaja()).append(" ").append(vaeosa.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.VaeosaAlluvusConverter implements Converter<VaeosaAlluvus, String> {
        public String convert(VaeosaAlluvus vaeosaAlluvus) {
            return new StringBuilder().append(vaeosaAlluvus.getVaeosaAlluvusId()).append(" ").append(vaeosaAlluvus.getAlates()).append(" ").append(vaeosaAlluvus.getAvaja()).append(" ").append(vaeosaAlluvus.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.VahtkondConverter implements Converter<Vahtkond, String> {
        public String convert(Vahtkond vahtkond) {
            return new StringBuilder().append(vahtkond.getVahtkondId()).append(" ").append(vahtkond.getAlates()).append(" ").append(vahtkond.getAvaja()).append(" ").append(vahtkond.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.VahtkondIntsidendiConverter implements Converter<VahtkondIntsidendi, String> {
        public String convert(VahtkondIntsidendi vahtkondIntsidendi) {
            return new StringBuilder().append(vahtkondIntsidendi.getVahtkondIntsidendisId()).append(" ").append(vahtkondIntsidendi.getAlates()).append(" ").append(vahtkondIntsidendi.getAvaja()).append(" ").append(vahtkondIntsidendi.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.VahtkonnaLiigeConverter implements Converter<VahtkonnaLiige, String> {
        public String convert(VahtkonnaLiige vahtkonnaLiige) {
            return new StringBuilder().append(vahtkonnaLiige.getVahtkonnaLiigeId()).append(" ").append(vahtkonnaLiige.getAlates()).append(" ").append(vahtkonnaLiige.getAvaja()).append(" ").append(vahtkonnaLiige.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.VahtkonndPiiriloigulConverter implements Converter<VahtkonndPiiriloigul, String> {
        public String convert(VahtkonndPiiriloigul vahtkonndPiiriloigul) {
            return new StringBuilder().append(vahtkonndPiiriloigul.getVahtkondPiiriloiulId()).append(" ").append(vahtkonndPiiriloigul.getAlates()).append(" ").append(vahtkonndPiiriloigul.getAvaja()).append(" ").append(vahtkonndPiiriloigul.getAvatud()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.VoimalikAlluvusConverter implements Converter<VoimalikAlluvus, String> {
        public String convert(VoimalikAlluvus voimalikAlluvus) {
            return new StringBuilder().append(voimalikAlluvus.getVoimalikAlluvusId()).append(" ").append(voimalikAlluvus.getAvaja()).append(" ").append(voimalikAlluvus.getAvatud()).append(" ").append(voimalikAlluvus.getKommentaar()).toString();
        }
        
    }
    
    static class main.web.ApplicationConversionServiceFactoryBean.VoodikohtConverter implements Converter<Voodikoht, String> {
        public String convert(Voodikoht voodikoht) {
            return new StringBuilder().append(voodikoht.getVoodikohtId()).append(" ").append(voodikoht.getAvaja()).append(" ").append(voodikoht.getAvatud()).append(" ").append(voodikoht.getKommentaar()).toString();
        }
        
    }
    
}
