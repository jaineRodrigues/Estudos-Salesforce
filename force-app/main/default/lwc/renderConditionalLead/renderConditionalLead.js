import { LightningElement, track, api} from 'lwc';

export default class LeadConditionalRendering extends LightningElement {
    @api recordId;
    @track areDetailsVisible = false;
    
  handleChange(event) {
    this.areDetailsVisible = event.target.checked;
  }
}


// O decorador @api define uma propriedade pública chamada
// As propriedades marcadas com @api são passadas para o componente pai e podem ser acessadas por outros componentes 
// e pelo Apex.

// @track são reativas, o que significa que quando seus valores são alterados, o componente é atualizado
//  automaticamente para refletir essas alterações.