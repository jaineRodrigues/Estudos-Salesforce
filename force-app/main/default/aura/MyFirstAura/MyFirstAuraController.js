({
    handleClick : function(component, event, helper) {
        // Alterna o valor do atributo 'ativo'
        var ativo = component.get("v.ativo");
        component.set("v.ativo", !ativo);
        
        // Alternar entre as imagens
        var imagemAtual = component.get("v.imagemAtual");
        if (imagemAtual === component.get("v.salesforceLogo")) {
            component.set("v.imagemAtual", component.get("v.imagem2"));
        } else {
            component.set("v.imagemAtual", component.get("v.salesforceLogo"));
        }
    }
})