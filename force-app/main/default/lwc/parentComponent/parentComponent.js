import { LightningElement } from 'lwc';
export default class ParentComponent extends LightningElement {

    // Método para lidar com eventos de alteração
    handleChangeEvent(event) {
        // Acessa o elemento filho usando o método querySelector
        // 'c-child-component' -- para encontrar o componente filho
        // Chama o método changeMessage() do componente filho, passando o valor do evento como argumento
        this.template.querySelector('c-child-component').changeMessage(event.target.value);
    }
}
