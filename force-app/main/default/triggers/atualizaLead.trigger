/*
 6. Em Lead, não permitir alterar classificação para cold e warm se receita anual estiver >=500000.
*/

trigger atualizaLead on Lead (before insert, before update) {
    for(Lead updateLead : Trigger.new){
        if(updateLead.AnnualRevenue >= 500000){
            if(updateLead.Rating == 'Cold'){
                updateLead.addError('Voçê não pode atualizar para Cold, quando a receita anual é maior ou igual a 500000.');
            }
             if(updateLead.Rating == 'Warm'){
                updateLead.addError('Voçê não pode atualizar para Warm, quando a receita anual é maior ou igual a 500000.');
            }
        }
    }
}