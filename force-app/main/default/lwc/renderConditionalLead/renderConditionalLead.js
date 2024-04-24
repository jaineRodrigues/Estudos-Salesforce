import { LightningElement, track, api} from 'lwc';

export default class LeadConditionalRendering extends LightningElement {
    @api recordId;
    @track areDetailsVisible = false;
    
  handleChange(event) {
    this.areDetailsVisible = event.target.checked;
  }
}



