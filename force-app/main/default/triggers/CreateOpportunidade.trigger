trigger CreateOpportunidade on Opportunity (before insert, before update) {
    for(Opportunity newOpp :  Trigger.new) {
       newOpp.Amount = 0;
       newOpp.CloseDate = newOpp.CloseDate.addDays(15);
    }
}