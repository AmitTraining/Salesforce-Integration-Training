public with sharing class PS_OpenCageGeoCoderService {
    
    public static void reverseGeoCoding(){
        // callout Only

        try{
            /* Step1 - Prepare the request*/
            HttpRequest req = new HttpRequest();
            // set endpoint
            req.setEndPoint('https://api.opencagedata.com/geocode/v1/json?q=52.3877830%2C9.7334394&key=151583ecf04d4dc9a82c1b1355025c90');
            // set header
            req.setHeader('Content-Type','application/json');
            req.setHeader('Accept','application/json'); //  JSON response may be in XML / JSON / Text / HTML
            // set method
            req.setMethod('GET');
            // set timeout
            req.setTimeout(2000); // in milliseconds


            // Step 2 - prepare http and send the request
            Http http = new Http();
            HttpResponse res = http.send(req); // HTTP response

            // Step 3 - process the response
            System.debug('Response : ' + res.getBody());
            System.debug('Response : ' + res.getStatusCode());
            System.debug('Response : ' + res.getStatus());
            
        }
        catch(System.CalloutException ex){

            System.debug('Exception : ' + ex.getLineNumber());
            System.debug('Exception : ' + ex.getCause());
            System.debug('Exception : ' + ex.getTypeName());
            System.debug('Exception : ' + ex.getMessage());
        }
        catch(Exception e){
            // Exception e
            System.debug('Exception : ' + e.getLineNumber());
            System.debug('Exception : ' + e.getCause());
            System.debug('Exception : ' + e.getTypeName());
            System.debug('Exception : ' + e.getMessage());
        }
    }
}