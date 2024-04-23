public class AccountController {
    public String Nome {get; set;}
    public Decimal ValorContrato {get; set;}
    public String Email {get; set;}
    public String Phone {get; set;}
    public String Cidade {get; set;}
    public String Fundador {get; set;}
    public String Companhia {get; set;}
    
    public void saveAccount() {
        try {
            Account objAccount = new Account();    	    
            objAccount.Name = Nome;
            objAccount.Contract_Value__c = ValorContrato;
            objAccount.Phone = Phone;
           
            
            insert objAccount;
            
            objAccount.Name = null;
            objAccount.Contract_Value__c = null;
        
            objAccount.Phone = null;
            
            
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.CONFIRM,'Cadastro realizado com sucesso!'));
        } catch(Exception e) {
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.ERROR,'Erro ao cadastrar: ' + e.getMessage()));
        }
        
    }
    
    public List<SelectOption> getCidades() {
        List<SelectOption> cidades = new List<SelectOption>();
        cidades.add(new SelectOption('Ceará', 'Ceará'));
        cidades.add(new SelectOption('São Paulo', 'São Paulo'));
        cidades.add(new SelectOption('Itajaí', 'Itajaí'));
        cidades.add(new SelectOption('Rio de Janeiro', 'Rio de Janeiro'));
        cidades.add(new SelectOption('Fora do Brasil', 'Fora do Brasil'));
        return cidades;
    }
}