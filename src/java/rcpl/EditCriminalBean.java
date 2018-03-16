/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rcpl;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author lenovo
 */
public class EditCriminalBean extends org.apache.struts.action.ActionForm {
    
    private String nm;
    private String gd;
    private String ht;
    private String wt;
    private String sid;
    private String cl;
    private String st;
    private String t1;

    /**
     * @return the nm
     */
    public String getNm() {
        return nm;
    }

    /**
     * @param nm the nm to set
     */
    public void setNm(String nm) {
        this.nm = nm;
    }

    /**
     * @return the gd
     */
    public String getGd() {
        return gd;
    }

    /**
     * @param gd the gd to set
     */
    public void setGd(String gd) {
        this.gd = gd;
    }

    /**
     * @return the ht
     */
    public String getHt() {
        return ht;
    }

    /**
     * @param ht the ht to set
     */
    public void setHt(String ht) {
        this.ht = ht;
    }

    /**
     * @return the wt
     */
    public String getWt() {
        return wt;
    }

    /**
     * @param wt the wt to set
     */
    public void setWt(String wt) {
        this.wt = wt;
    }

    /**
     * @return the sid
     */
    public String getSid() {
        return sid;
    }

    /**
     * @param sid the sid to set
     */
    public void setSid(String sid) {
        this.sid = sid;
    }

    /**
     * @return the cl
     */
    public String getCl() {
        return cl;
    }

    /**
     * @param cl the cl to set
     */
    public void setCl(String cl) {
        this.cl = cl;
    }

    /**
     * @return the st
     */
    public String getSt() {
        return st;
    }

    /**
     * @param st the st to set
     */
    public void setSt(String st) {
        this.st = st;
    }

    /**
     * @return the t1
     */
    public String getT1() {
        return t1;
    }

    /**
     * @param t1 the t1 to set
     */
    public void setT1(String t1) {
        this.t1 = t1;
    }
    
    
}
