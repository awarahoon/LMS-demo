({
	hprMethod : function(cmp,evt) {
		alert('I am from Helper');
                var eName = cmp.get('v.empName');
        alert(eName);
        var eFname = cmp.get('v.empFName');
        alert(eFname);
        var eAddr = cmp.get('v.empAddress');
        alert(eAddr);
        var eDept = cmp.get('v.empDept');
        alert(eDept);
        var eSal = cmp.get('v.empSalary');
        alert(eSal);
        // how to call apex method from JS
        var action = cmp.get('c.insertEmpDetails');
        //method name i.e. insertEmpDetails should be same as defined in Apex Class
        //params name i.e. should be same as defined in insertEmpDetails method
        action.setParams({
            "enm":eName,
            "efnam": eFname,
            "eaddr": eAddr,
            "edept" : eDept,
            "esal" : eSal
        });
        action.setCallback(this, function(a){
            var state = a.getState(); //get the response state
            if(state=='SUCCESS'){
                alert('Record Inserted Successfully');
            }
        });
        $A.enqueueAction(action);
	}
})