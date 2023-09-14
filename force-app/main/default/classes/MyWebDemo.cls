@restResource(urlmapping='/myaccount/*')
global class MyWebDemo {
@httpGet
    global static list<Account> getAllAccounts(){
    List<Account> act=[select name,id from account];
        return act;
    }
@httpPost
    global static void insertAccount(String actname){
        Account act= new Account();
        act.name=actname;
        insert act;
    }
@httpDelete
    global static void DeleteAccount(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
		String actId = req.requestURI.subString(req.requestURI.Lastindexof('/')+1);
        Account act = [select id, name from account where id=:actId];
        delete act;
    }
   @httpPut
    global static void UpdateAccount(String rId,String nm){
        Account ac = [select id, name from Account where id=:rId];
        ac.Name = nm;
        update ac;
    }
}