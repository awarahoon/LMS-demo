@isTest
public class SetClassExample {
    public static testmethod void main(){
        Set<Integer> obj = new Set<Integer>();
        obj.add(10);
        obj.add(25);
        obj.add(36);
        obj.add(-80);
        obj.add(25);
        obj.add(467);
        system.debug(obj);
        set<Integer> myset = new Set<Integer>{1,3};
            List<Integer>myList = new List<Integer>{1,10};
                Boolean res1 = mySet.removeAll(MyList);
        		System.debug(myList);//9 8
        		System.debug(mySet);//1 3
        		System.debug('The result is' + res1);
        Set<Integer> mySet1 = new Set<Integer>{1,3,77};
            System.debug(mySet1);// 1 3 77
        Set<Integer>mySet2 = new Set<Integer>{1,3,7};
            Boolean result = mySet1.retainAll(mySet2);
        System.debug(mySet1);
        System.debug(mySet2);
        System.debug(result);
        
    }
}