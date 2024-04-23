trigger AtualizaOpportunidade on Opportunity (before insert, before update){
    for(Opportunity newOpp :  Trigger.new) {
        if(newOpp.StageName == 'Closed Lost') {
            if (String.isBlank(newOpp.Lost_Reason__c)){
                newOpp.addError('O motivo deve ser preenchido ao marcar a oportunidade como "Closed Lost".');
            }
        }
    }
}