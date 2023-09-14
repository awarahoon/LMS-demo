public class CustomMetaData {
    public void getCustomSettingDetails(){
        My_Custom_Metadata__mdt msd = My_Custom_Metadata__mdt.getInstance('My_metadataset');
        System.debug(msd);

        System.debug('This is my flag value ' + msd);

        if(msd.flag__c==true){
            System.debug('Please execute!');
        }
        else{
            System.debug('Please dont execute!!');
        }
    }
}