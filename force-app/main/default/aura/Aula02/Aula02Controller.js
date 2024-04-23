({
	showToast : function(component, event, helper) {
    var toastEvent = $A.get("e.force:showToast");
    toastEvent.setParams({
        "type" : "success",
        "title": "Success!",
        "message": "sucess."
    });
    toastEvent.fire();
}
})