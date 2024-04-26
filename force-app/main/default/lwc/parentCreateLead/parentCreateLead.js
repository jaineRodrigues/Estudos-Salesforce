import { LightningElement, api } from 'lwc';
// import getRecords from '@salesforce/apex/getRecordsLead.getRecords';

export default class ParentCreateLead extends LightningElement {
  @api Name;
  @api Company;
  @api Status;

  // wireLeads;


  // @wire(getRecords)
  // wireLeadsData({ error, data }) {
  //   if (data) {
  //     this.wireLeads = data;
  //   } else if (error) {
  //     alert("Erro ao carregar leads");
  //     console.error('Erro ao carregar leads:', error);
  //   }
  // }
}