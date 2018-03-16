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
public class UpdateStationBean extends org.apache.struts.action.ActionForm {
    
    private String addr;
    private String phno;
    private String phed;
    private String pass;
    private String rpas;

    /**
     * @return the addr
     */
    public String getAddr() {
        return addr;
    }

    /**
     * @param addr the addr to set
     */
    public void setAddr(String addr) {
        this.addr = addr;
    }

    /**
     * @return the phno
     */
    public String getPhno() {
        return phno;
    }

    /**
     * @param phno the phno to set
     */
    public void setPhno(String phno) {
        this.phno = phno;
    }

    /**
     * @return the phed
     */
    public String getPhed() {
        return phed;
    }

    /**
     * @param phed the phed to set
     */
    public void setPhed(String phed) {
        this.phed = phed;
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
     * @return the rpas
     */
    public String getRpas() {
        return rpas;
    }

    /**
     * @param rpas the rpas to set
     */
    public void setRpas(String rpas) {
        this.rpas = rpas;
    }
}
