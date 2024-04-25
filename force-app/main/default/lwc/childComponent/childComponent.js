import { LightningElement, track } from 'lwc';

export default class ChildComponent extends LightningElement {
    // quando uso @track, a variable  renderiza obligatoriamente
    @track message;

    changeMessage(toString){
        this.message = toString.toUpperCase();
    }
}
