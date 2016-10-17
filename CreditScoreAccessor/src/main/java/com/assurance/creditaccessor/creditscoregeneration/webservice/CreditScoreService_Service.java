package com.assurance.creditaccessor.creditscoregeneration.webservice;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceFeature;
import javax.xml.ws.Service;

/**
 * This class was generated by Apache CXF 2.7.3
 * 2016-10-17T17:11:54.285-05:00
 * Generated source version: 2.7.3
 * 
 */
@WebServiceClient(name = "CreditScoreService", 
                  wsdlLocation = "file:/C:/Users/Bootcamp%20User%20004/git/BCJ_AsuranceApplication/CreditScoreAccessor/src/main/resources/test.wsdl",
                  targetNamespace = "http://service.creditscore.creditbureau.com/") 
public class CreditScoreService_Service extends Service {

    public final static URL WSDL_LOCATION;

    public final static QName SERVICE = new QName("http://service.creditscore.creditbureau.com/", "CreditScoreService");
    public final static QName CreditScoreServiceImplPort = new QName("http://service.creditscore.creditbureau.com/", "CreditScoreServiceImplPort");
    static {
        URL url = null;
        try {
            url = new URL("file:/C:/Users/Bootcamp%20User%20004/git/BCJ_AsuranceApplication/CreditScoreAccessor/src/main/resources/test.wsdl");
        } catch (MalformedURLException e) {
            java.util.logging.Logger.getLogger(CreditScoreService_Service.class.getName())
                .log(java.util.logging.Level.INFO, 
                     "Can not initialize the default wsdl from {0}", "file:/C:/Users/Bootcamp%20User%20004/git/BCJ_AsuranceApplication/CreditScoreAccessor/src/main/resources/test.wsdl");
        }
        WSDL_LOCATION = url;
    }

    public CreditScoreService_Service(URL wsdlLocation) {
        super(wsdlLocation, SERVICE);
    }

    public CreditScoreService_Service(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public CreditScoreService_Service() {
        super(WSDL_LOCATION, SERVICE);
    }
    
    //This constructor requires JAX-WS API 2.2. You will need to endorse the 2.2
    //API jar or re-run wsdl2java with "-frontend jaxws21" to generate JAX-WS 2.1
    //compliant code instead.
    public CreditScoreService_Service(WebServiceFeature ... features) {
        super(WSDL_LOCATION, SERVICE, features);
    }

    //This constructor requires JAX-WS API 2.2. You will need to endorse the 2.2
    //API jar or re-run wsdl2java with "-frontend jaxws21" to generate JAX-WS 2.1
    //compliant code instead.
    public CreditScoreService_Service(URL wsdlLocation, WebServiceFeature ... features) {
        super(wsdlLocation, SERVICE, features);
    }

    //This constructor requires JAX-WS API 2.2. You will need to endorse the 2.2
    //API jar or re-run wsdl2java with "-frontend jaxws21" to generate JAX-WS 2.1
    //compliant code instead.
    public CreditScoreService_Service(URL wsdlLocation, QName serviceName, WebServiceFeature ... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     *
     * @return
     *     returns CreditScoreService
     */
    @WebEndpoint(name = "CreditScoreServiceImplPort")
    public CreditScoreService getCreditScoreServiceImplPort() {
        return super.getPort(CreditScoreServiceImplPort, CreditScoreService.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns CreditScoreService
     */
    @WebEndpoint(name = "CreditScoreServiceImplPort")
    public CreditScoreService getCreditScoreServiceImplPort(WebServiceFeature... features) {
        return super.getPort(CreditScoreServiceImplPort, CreditScoreService.class, features);
    }

}
