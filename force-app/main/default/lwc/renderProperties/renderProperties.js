import { LightningElement, track } from 'lwc';

export default class RenderProperties extends LightningElement {
  @track areEmployDetailsVisible = true;
  @track arePromotionDetailsVisible = true;

  empresa = { 
    nome: "DBC",
    cnpj: "72.331.373/9182-00",
    endereco: "Rua das flores"
  };

  produto = {
    nome: "Café Mascote",
    descricao: "Café descafeinado",
    preco: "14,20"
  };

  promocao = {
    nome: "Leve 3 e pague 2",
    oferta1: "Café Mascote Tradicional",
    oferta2: "Café Mascote Descafeinado",
  };

  handleDetailsEmploys() {
    this.areEmployDetailsVisible = !this.areEmployDetailsVisible;
  }

  handleDetailsPromotion() {
    this.arePromotionDetailsVisible = !this.arePromotionDetailsVisible;
  }
}
