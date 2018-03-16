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
public class RegisterStationBean extends org.apache.struts.action.ActionForm {
    
    private String pid;
    private String pn;
    private String ad;
    private String ph;
    private String pass;
    private String sh;

    /**
     * @return the pid
     */
    public String getPid() {
        return pid;
    }

    /**
     * @param pid the pid to set
     */
    public void setPid(String pid) {
        this.pid = pid;
    }

    /**
     * @return the pn
     */
    public String getPn() {
        return pn;
    }

    /**
     * @param pn the pn to set
     */
    public void setPn(String pn) {
        this.pn = pn;
    }

    /**
     * @return the ad
     */
    public String getAd() {
        return ad;
    }

    /**
     * @param ad the ad to set
     */
    public void setAd(String ad) {
        this.ad = ad;
    }

    /**
     * @return the ph
     */
    public String getPh() {
        return ph;
    }

    /**
     * @param ph the ph to set
     */
    public void setPh(String ph) {
        this.ph = ph;
    }

    /**
     * @return the pass
     */
    public String getPass() {
        return pass;
    }

    /**
     * @param pass the pass to set
     */
    public void setPass(String pass) {
        this.pass = pass;
    }

    /**
     * @return the sh
     */
    public String getSh() {
        return sh;
    }

    /**
     * @param sh the sh to set
     */
    public void setSh(String sh) {
        this.sh = sh;
    }
    
    
   
}
