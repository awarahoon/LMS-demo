trigger Trigger3 on Course__c (before insert,before update) {
    List<Course__c> obj = new List<Course__c>();
    obj=trigger.new;
    for(course__c cc : obj){
        if(cc.Fees__c<500){
            cc.Fees__c.addError('Sorry the fee value is less than 500;cannot change and cannot insert as well');
        }
    }
}