import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class Inicio extends LightningElement {
   
    handleContact(){
        const inputFields = this.template.querySelectorAll('lightning-input-field');
        if(inputFields){
            inputFields.forEach(
                field =>{
                    field.reset();
                }
            );
            // Exibe uma mensagem de sucesso
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Sucesso!',
                    message: 'Contato cadastrado com sucesso!',
                    variant: 'success'
                })
            );
        } else {
      // Exibe uma mensagem de erro se não houver campos de entrada
      this.dispatchEvent(
        new ShowToastEvent({
            title: 'Erro!',
            message: 'Erro ao cadastrat contato.',
            variant: 'error'
        })
    );
}
}
}