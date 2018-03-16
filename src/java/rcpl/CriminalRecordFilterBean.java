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
 * @author Dell
 */
public class CriminalRecordFilterBean extends org.apache.struts.action.ActionForm {
    
    private String cname;
    private String cid;
    private String gen;
    private String p_id;
    private String cll;
    private String sts;

    /**
     * @return the cname
     */
    public String getCname() {
        return cname;
    }

    /**
     * @param cname the cname to set
     */
    public void setCname(String cname) {
        this.cname = cname;
    }

    /**
     * @return the cid
     */
    public String getCid() {
        return cid;
    }

    /**
     * @param cid the cid to set
     */
    public void setCid(String cid) {
        this.cid = cid;
    }

    /**
     * @return the gen
     */
    public String getGen() {
        return gen;
    }

    /**
     * @param gen the gen to set
     */
    public void setGen(String gen) {
        this.gen = gen;
    }

    /**
     * @return the p_id
     */
    public String getP_id() {
        return p_id;
    }

    /**
     * @param p_id the p_id to set
     */
    public void setP_id(String p_id) {
        this.p_id = p_id;
    }

    /**
     * @return the cll
     */
    public String getCll() {
        return cll;
    }

    /**
     * @param cll the cll to set
     */
    public void setCll(String cll) {
        this.cll = cll;
    }

    /**
     * @return the sts
     */
    public String getSts() {
        return sts;
    }

    /**
     * @param sts the sts to set
     */
    public void setSts(String sts) {
        this.sts = sts;
    }
    
}
