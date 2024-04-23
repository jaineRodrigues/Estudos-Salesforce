/*3- Atualize o código da trigger de Lead, adicionando as seguintes condições:

Se receita anual >= 0 e < 10000
a classificação deverá ser Cold Se receita anual >= 10000 e < 100000
a classificação deverá ser Warm Se receita anual >= 100000
a classificação é Hot*/

trigger NewLead on Lead (before insert, before update) {
    for(Lead newLead : Trigger.new) {
        if (String.isBlank(newLead.Fax) && Trigger.IsInsert && Trigger.IsUpdate ) {
            newLead.Fax = '';
        } if(String.isBlank(newLead.Website) && Trigger.IsInsert && Trigger.IsUpdate){
            newLead.website = 'undefined';

        } if(newLead.AnnualRevenue == null && Trigger.IsInsert && Trigger.IsUpdate){
            newLead.AnnualRevenue = 0;
        } 
        
        if(newLead.AnnualRevenue >= 0 || newLead.AnnualRevenue < 10000 ){
            if(newLead.AnnualRevenue >= 10000 ||  newLead.AnnualRevenue < 100000){
                //Define a classificação como Cold
                newLead.Rating = 'Cold';
                
            } if(newLead.AnnualRevenue >= 100000){
                //Define a classificação como Warm
                newLead.Rating = 'Warm';
                
            } else{
                //Caso nenhuma das duas condições anteriores sejam    atendidas, a classificação é HOT
                newLead.Rating = 'Hot';
            }
        }
    }
}