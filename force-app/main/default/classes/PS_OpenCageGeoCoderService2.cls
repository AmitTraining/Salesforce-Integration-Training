public with sharing class PS_OpenCageGeoCoderService2 {
    public static void reverseGeoCoding(String lat, String log){ // lat- 52.3877830 log -9.7334394 
        // callout Only

        try{
            /* Step1 - Prepare the request*/
            HttpRequest req = new HttpRequest();
            // set endpoint
            req.setEndPoint(System.Label.OpenCage_API_URL+'?q='+lat+'%2C'+log+'&key='+System.Label.OpenCage_API_Key);
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