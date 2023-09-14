public class AlarmClass implements Schedulable {
    // member method
    public void execute(SchedulableContext sc){
        Employee__c obj= new Employee__c();
        obj.Ename__c='Shahrukh';
        obj.Salary__c=100000;
        obj.deptno__c='20';
        obj.job__c='Manager';
        Insert obj;
        
        
        
    }

}