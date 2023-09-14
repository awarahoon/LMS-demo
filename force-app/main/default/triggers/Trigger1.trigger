trigger Trigger1 on Course__c (before insert) {
    List<Course__c> obj = new List<Course__c>();
    obj=trigger.new;
    for(course__c cc : obj){
        if(cc.Fees__c<500){
            cc.Fees__c.addError('The course fee is less than the stipulated amount');
        }
    }
}