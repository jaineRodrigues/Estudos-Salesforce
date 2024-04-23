// Transoportando informaçoes para a classe lightning
import { LightningElement, api, track, wire } from 'lwc';

export default class FirstComponent extends LightningElement {
    name =  "Jaíne";
    company = "DBC Company";
    description = "Estagiário";
    salary = 10000;
 

    // @api contactId;//  Id da conta a ser exibido
    // @track contact //SERVE PARA RASTREARA(Aqui esta sendo feito um aramazenamento dos dados do contato)
    // //@wire =  Atribuição/notação WIRE: Para fazer a exibição de valores e de campos

    
    // connectedCallback(){
    // //Busca os dados do contato quando o componente é carregado
    // this.loadContact();

    // }

    // loadContact(){
    //     const {contactId} = this;
    //     fetch('/data/sobject/contact ${contactId}')
    //     .then(response => response.json())
    //     .then(data => {
    //         this.contact =  data;
           
    //     })
    // }

}