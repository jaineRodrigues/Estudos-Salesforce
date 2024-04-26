import { LightningElement, track, api } from 'lwc';

export default class ChildComponent extends LightningElement {
    // Ao usar @track, a variável é renderizada automaticamente quando alterada
    @track message;

    @api
    changeMessage(toString) {
        this.message = toString.toUpperCase();
    }
}

