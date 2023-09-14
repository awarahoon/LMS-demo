public class SABAClass implements Schedulable{
	public void execute(SchedulableContext sc){
       BeyondGL obj = new BeyondGL();
       database.executeBatch(obj, 2); 
    }
}