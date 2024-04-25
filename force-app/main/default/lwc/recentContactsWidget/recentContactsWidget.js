import { LightningElement, wire } from 'lwc';
import getContacts from '@salesforce/apex/recentContacWidgetController.getContacts';

export default class RecentContactsWidget extends LightningElement {
  recentContacts; //variavél para armazenar os contatos recentes

  @wire(getContacts) //decorator conectado a função apex getContacts
    recentContactsData({error, data}) {//recebe os resultados da função do apex
      if (data) {
        this.recentContacts =  data;//atribui o retorno a recentContacts
      } else if (error){
        alert("Erro ao carregar contatos");
        console.log('Erro ao carregar contatos', error);
      }
    }
  }