trigger Trigger4 on Course__c (before delete) {
    List<Course__c> obj = new List<Course__c>();
    obj=trigger.old ;
    for(course__c cc : obj){
        if(cc.Fees__c>5000){
            cc.Fees__c.addError('Dont del Record');
        }
    }
}