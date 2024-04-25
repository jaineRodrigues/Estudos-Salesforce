import { LightningElement, track } from 'lwc';
import Pokemon1 from '@salesforce/resourceUrl/Pokemon1';
import Pokemon2 from '@salesforce/resourceUrl/Pokemon2';

export default class ShowImage extends LightningElement {
  @track pokemonImage = false;

  changePokemonImage() {
    if (this.pokemonImage === Pokemon1) {
      this.pokemonImage = Pokemon2;
    } else {
      this.pokemonImage = Pokemon1;
    }
  }
}
