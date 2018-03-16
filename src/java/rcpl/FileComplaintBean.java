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
 * @author Nilaya
 */
public class FileComplaintBean extends org.apache.struts.action.ActionForm
{
    
    private String type;
    private String pid;
    private String desc;
    private String aadhar;
    private String contact;
    private String email;

    /**
     * @return the type
     */
    public String getType()
    {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type)
    {
        this.type = type;
    }

    /**
     * @return the pid
     */
    public String getPid()
    {
        return pid;
    }

    /**
     * @param pid the pid to set
     */
    public void setPid(String pid)
    {
        this.pid = pid;
    }

    /**
     * @return the desc
     */
    public String getDesc()
    {
        return desc;
    }

    /**
     * @param desc the desc to set
     */
    public void setDesc(String desc)
    {
        this.desc = desc;
    }

    /**
     * @return the aadhar
     */
    public String getAadhar()
    {
        return aadhar;
    }

    /**
     * @param aadhar the aadhar to set
     */
    public void setAadhar(String aadhar)
    {
        this.aadhar = aadhar;
    }

    /**
     * @return the contact
     */
    public String getContact()
    {
        return contact;
    }

    /**
     * @param contact the contact to set
     */
    public void setContact(String contact)
    {
        this.contact = contact;
    }

    /**
     * @return the email
     */
    public String getEmail()
    {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email)
    {
        this.email = email;
    }
}
