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
import org.persistence.ISIK_INTSIDENDIS;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ISIK_INTSIDENDIS_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager ISIK_INTSIDENDIS.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer ISIK_INTSIDENDIS.version;
    
    public Integer ISIK_INTSIDENDIS.getVersion() {
        return this.version;
    }
    
    public void ISIK_INTSIDENDIS.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void ISIK_INTSIDENDIS.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ISIK_INTSIDENDIS.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ISIK_INTSIDENDIS attached = ISIK_INTSIDENDIS.findISIK_INTSIDENDIS(this.isikIntsidendisId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ISIK_INTSIDENDIS.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ISIK_INTSIDENDIS.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ISIK_INTSIDENDIS ISIK_INTSIDENDIS.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ISIK_INTSIDENDIS merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager ISIK_INTSIDENDIS.entityManager() {
        EntityManager em = new ISIK_INTSIDENDIS().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ISIK_INTSIDENDIS.countISIK_INTSIDENDISs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ISIK_INTSIDENDIS o", Long.class).getSingleResult();
    }
    
    public static List<ISIK_INTSIDENDIS> ISIK_INTSIDENDIS.findAllISIK_INTSIDENDISs() {
        return entityManager().createQuery("SELECT o FROM ISIK_INTSIDENDIS o", ISIK_INTSIDENDIS.class).getResultList();
    }
    
    public static ISIK_INTSIDENDIS ISIK_INTSIDENDIS.findISIK_INTSIDENDIS(Long isikIntsidendisId) {
        if (isikIntsidendisId == null) return null;
        return entityManager().find(ISIK_INTSIDENDIS.class, isikIntsidendisId);
    }
    
    public static List<ISIK_INTSIDENDIS> ISIK_INTSIDENDIS.findISIK_INTSIDENDISEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ISIK_INTSIDENDIS o", ISIK_INTSIDENDIS.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
