public with sharing class SmartMigrationCreatorClass {
    public SmartMigrationCreatorClass() {
        
    }

    @AuraEnabled(cacheable=true)
    public static String getApexClasses(){
        HttpRequest request=new HttpRequest();
        request.setHeader('Authorization','Bearer '+UserInfo.getSessionID());
        request.setHeader('Content-Type','application/json');
        String baseUrl = URL.getSalesforceBaseUrl().toExternalForm();
        request.setEndpoint(baseUrl+'/services/data/v49.0/tooling/query/?q=SELECT+Name+from+ApexClass');
        request.setMethod('GET');
        System.debug('Test changes');
        System.debug('Test changes1111');

        Http http=new Http();
        HttpResponse response=http.send(request);
        System.debug('*****'+response.getBody());
        String result=response.getBody();
        return result;
    }
}