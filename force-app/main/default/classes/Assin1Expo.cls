@restResource(urlmapping='/myaccount1/*')
global class Assin1Expo {
@httpGet
    global static list<Merchandise__c> getAllMerchandises(){
    List<Merchandise__c> mer=[select name,id from Merchandise__c];
        return mer;
    }
@httpPost
 global static void Assign2(list<Merchandise__c> arr)  {
    for(Merchandise__c er : arr){
        Merchandise__c newRecord = new Merchandise__c();
        newRecord.name=er.name;
        newRecord.Merchandise_Description__c = er.Merchandise_Description__c;
        newRecord.Merchandise_Price__c=er.Merchandise_Price__c;
        insert newRecord;
    }
}
@httpDelete
    global static void deleteRecords(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String merID = req.RequestURI.substring(req.requestURI.lastIndexof('/')+1);
        merchandise__c mern = [select id, name from merchandise__c where id=:merID];
        delete mern;
    }
}