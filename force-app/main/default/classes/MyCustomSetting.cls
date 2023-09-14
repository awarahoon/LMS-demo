public class MyCustomSetting {
    public void getCustomSettingDetails(){
        MySettings__c ms = MySettings__c.getInstance('MyDataset');
        System.debug(ms);

        System.debug('This is my flag value ' + ms);

        if(ms.flag__c==true){
            System.debug('Please execute!');
        }
        else{
            System.debug('Please dont execute!!');
        }
    }
}