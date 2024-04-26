import { LightningElement, api } from 'lwc';

export default class Oppsdaconta extends LightningElement {
  @api id
  @api valor
  @api fase
  @api nome
}