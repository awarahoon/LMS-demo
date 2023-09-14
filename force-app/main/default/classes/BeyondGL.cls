public class BeyondGL implements database.batchable<Employee__c>,database.stateful {
    string name='Kanishk';
    //1.start
    public Iterable<employee__c> start(database.batchableContext bc){
        system.debug('I am in start method' + name); //Kanishk
        name='Gurnoor';
        return [select salary__c from employee__c];
        
    }
    //2.execute
    public void execute(database.BatchableContext bc,List<employee__c> obj){
        system.debug('I am in execute mode' + name);   //Gurnoor
        name='Ketan';
        for(Employee__c er: obj){
            er.salary__c += 100000;
        }
        update obj;
    }
    //3.finish
    public void finish(database.BatchableContext bc){
        system.debug('I am in finish mode' + name);   //Ketan
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        
        String[] toAddress = new String[]{'vijaypracash2019@gmail.com','harshaboddu14@gmail.com'};
        
            mail.setToAddresses(toAddress);
        	mail.setSubject('Batch Apex Job Completed');
        	mail.setPlainTextBody('The Batch job that you had started is completed');
        	Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
    }

}