import { LightningElement, wire } from 'lwc';
import getLeads from '@salesforce/apex/leadIterator.getleads';
export default class LeadIterator extends LightningElement {
    wireLeads;

    @wire(getLeads)
    wireLeadsData({error, data}) {
        if (data) {
            this.wireLeads = data;
        } else if (error) {
            alert("Erro ao carregar leads");
            console.error('Erro ao carregar leads:', error);
        }
    }
}
