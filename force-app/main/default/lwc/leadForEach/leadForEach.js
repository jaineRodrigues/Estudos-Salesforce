import { LightningElement, wire } from 'lwc';
import getLeadsWithSource from '@salesforce/apex/leadForEachController.getLeadsWithSource';

export default class LeadForEach extends LightningElement {
    @wire(getLeadsWithSource)
    wiredLeads;

    @wire(getLeadsWithSource)
    wiredLeadData({ error, data }) {
        if (data) {
            this.wiredLeads = data;
        } else if (error) {
      
            console.error('Erro ao carregar leads:', error);
        }
    }

    // leads = [
    //     {
    //         Id: '003171931112854375',
    //         Name: 'Analy Taylor',
    //         Email: 'ane@me.com',
    //         Company: 'DBC'
    //     },
        
    //     {
    //         Id: '003848991274589432',
    //         Name: 'Jennifer Wu',
    //         Email: 'ane@me.com',
    //         Company: 'DBC'
    //     },
    //     {
    //         Id: '003848991274589432',
    //         Name: 'Jennifer Wu',
    //         Email: 'ane@me.com',
    //         Company: 'DBC'
    //     }
    // ];
}
