import { LightningElement, api } from 'lwc';

export default class ChildCreateLead extends LightningElement {
  sendData(event){
    this.template.querySelector('c-parent-create-lead');
  }
}

