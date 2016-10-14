
package com.assurance.creditaccessor.creditscoregeneration.webservice;

/**
 * Please modify this class to meet your needs
 * This class is not complete
 */

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

/**
 * This class was generated by Apache CXF 2.7.3
 * 2016-10-06T16:33:09.642-05:00
 * Generated source version: 2.7.3
 * 
 */
public final class CreditScoreService_CreditScoreServiceImplPort_Client {

    private static final QName SERVICE_NAME = new QName("http://service.creditscore.creditbureau.com/", "CreditScoreService");

    private CreditScoreService_CreditScoreServiceImplPort_Client() {
    }

    public static void main(String args[]) throws java.lang.Exception {
        URL wsdlURL = CreditScoreService_Service.WSDL_LOCATION;
        if (args.length > 0 && args[0] != null && !"".equals(args[0])) { 
            File wsdlFile = new File(args[0]);
            try {
                if (wsdlFile.exists()) {
                    wsdlURL = wsdlFile.toURI().toURL();
                } else {
                    wsdlURL = new URL(args[0]);
                }
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
        }
      
        CreditScoreService_Service ss = new CreditScoreService_Service(wsdlURL, SERVICE_NAME);
        CreditScoreService port = ss.getCreditScoreServiceImplPort();  
        
        {
        System.out.println("Invoking getCreditScoreBySSN...");
        java.lang.String _getCreditScoreBySSN_arg0 = "";
        int _getCreditScoreBySSN__return = port.getCreditScoreBySSN(_getCreditScoreBySSN_arg0);
        System.out.println("getCreditScoreBySSN.result=" + _getCreditScoreBySSN__return);


        }

        System.exit(0);
    }

}
