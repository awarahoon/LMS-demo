public class httpCall {
    public void getDetails(){
        Http http=new Http();
        HttpRequest request =new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset-UTF-8');
        request.setBody('{"name":"mighty moose"}');
        HttpResponse response =http.send(request);
        if(response.getStatusCode() != 201){
            System.debug('no');
        }else{
            system.debug(response.getBody());
        }
    }
}