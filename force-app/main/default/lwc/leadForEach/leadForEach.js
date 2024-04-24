import { LightningElement, wire } from 'lwc';
import getLeadsWithSource from '@salesforce/apex/leadForEachController.getLeadsWithSource';

export default class LeadForEach extends LightningElement {
    wiredLeads;

    @wire(getLeadsWithSource)
    wiredLeadData({ error, data }) {
        if (data) {
            this.wiredLeads = data;
        } else if (error) {
            console.error('Erro ao carregar leads:', error);
        }
    }
}
