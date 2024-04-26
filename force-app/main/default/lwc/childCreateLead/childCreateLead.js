import { LightningElement, api } from 'lwc';

export default class ChildCreateLead extends LightningElement {
  @api Name;
  @api Company;
  @api status;
}

