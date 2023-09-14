@isTest
public class ListClass {
    public static testmethod void main(){
        List<Integer> obj = new List<Integer>();
        obj.add(45);
        obj.add(456);
        obj.add(-9);
        obj.add(298);
        obj.add(953);
        system.debug(obj);
        for(integer ev : obj){
            system.debug(ev);
        }
        system.debug(obj[3]);
    }
}