import { LightningElement, track } from 'lwc';

export default class ParentComponent extends LightningElement {
  @track msg;
  constructor() {
    super();
    this.template.addEventListener('mycustomevent', this.handleCustomEvent.bind(this));
  }
  handleCustomEvent(event) {
    this.msg = event.detail;
  }
}
