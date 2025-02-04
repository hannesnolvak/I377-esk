// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.persistence;

import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.persistence.INTSIDENDI_LIIK;
import org.springframework.transaction.annotation.Transactional;

privileged aspect INTSIDENDI_LIIK_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager INTSIDENDI_LIIK.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer INTSIDENDI_LIIK.version;
    
    public Integer INTSIDENDI_LIIK.getVersion() {
        return this.version;
    }
    
    public void INTSIDENDI_LIIK.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void INTSIDENDI_LIIK.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void INTSIDENDI_LIIK.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            INTSIDENDI_LIIK attached = INTSIDENDI_LIIK.findINTSIDENDI_LIIK(this.intsidendiLiikId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void INTSIDENDI_LIIK.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void INTSIDENDI_LIIK.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public INTSIDENDI_LIIK INTSIDENDI_LIIK.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        INTSIDENDI_LIIK merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager INTSIDENDI_LIIK.entityManager() {
        EntityManager em = new INTSIDENDI_LIIK().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long INTSIDENDI_LIIK.countINTSIDENDI_LIIKs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM INTSIDENDI_LIIK o", Long.class).getSingleResult();
    }
    
    public static List<INTSIDENDI_LIIK> INTSIDENDI_LIIK.findAllINTSIDENDI_LIIKs() {
        return entityManager().createQuery("SELECT o FROM INTSIDENDI_LIIK o", INTSIDENDI_LIIK.class).getResultList();
    }
    
    public static INTSIDENDI_LIIK INTSIDENDI_LIIK.findINTSIDENDI_LIIK(Long intsidendiLiikId) {
        if (intsidendiLiikId == null) return null;
        return entityManager().find(INTSIDENDI_LIIK.class, intsidendiLiikId);
    }
    
    public static List<INTSIDENDI_LIIK> INTSIDENDI_LIIK.findINTSIDENDI_LIIKEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM INTSIDENDI_LIIK o", INTSIDENDI_LIIK.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
