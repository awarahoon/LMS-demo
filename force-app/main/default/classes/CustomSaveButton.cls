public class CustomSaveButton {

 

    public string edept { get; set; }

 

    public Integer esalary { get; set; }

 

    public String ejob { get; set; }

 

    public String ename { get; set; }

 

    public PageReference saveRecord() {
        Employee__c obj=new Employee__c();

        obj.ename__c=ename;
        obj.salary__c=esalary;
        obj.job__c=ejob;
        obj.deptno__c=edept;
        Insert obj;

        return null;
    }

 

}