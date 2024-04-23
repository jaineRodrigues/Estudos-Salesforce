/*
8. Realize uma trigger, que marque novas
contas do setor de “Tecnologia” ou “Finanças” como “Hot” no sistema,
ajudando assim sua empresa a priorizar essas vendas.*/


trigger UpdateAccount on Account (before insert, before update) {
    for(Account newAcc : Trigger.new){
        if(newAcc.Industry == 'Technology' || newAcc.Industry == 'Finance' ){
            newAcc.Rating = 'Hot';
        }
    }
}