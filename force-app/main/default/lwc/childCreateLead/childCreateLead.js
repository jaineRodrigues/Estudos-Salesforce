// import { LightningElement, api } from 'lwc';

// export default class ChildCreateLead extends LightningElement {
//   sendData(event){
//     this.template.querySelector('c-parent-create-lead');
//   }
// }

import { LightningElement, api } from 'lwc';

export default class ChildCreateLead extends LightningElement {
  @api leadName;
  @api leadCompany;
  @api leadStatus;

  // Optional handler to pass data back to parent (uncomment if needed)
  // handlePassData() {
  //   // Emit an event with lead data
  //   this.dispatchEvent(new CustomEvent('leadData', { detail: { leadName: this.leadName, leadCompany: this.leadCompany, leadStatus: this.leadStatus } }));
  // }
}
