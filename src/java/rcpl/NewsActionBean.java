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
public class NewsActionBean extends org.apache.struts.action.ActionForm {
    
    private String news;
    /**
     * @return the news
     */
    public String getNews() {
        return news;
    }

    /**
     * @param news the news to set
     */
    public void setNews(String news) {
        this.news = news;
    }

    /**
     * @return the sno
     */
    
}
