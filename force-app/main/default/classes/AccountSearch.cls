public with sharing class AccountSearch {
    
    public static List<Account> searchAccountsByIndustry(String industry) {
        List<Account> accountResults = new List<Account>();
        
        // Executa a pesquisa SOSL para encontrar contas com o setor especificado
        List<List<SObject>> searchResults = [FIND :industry IN INDUSTRY FIELDS RETURNING Account];
        
        // Itera sobre os resultados da pesquisa
        for (List<SObject> searchResult : searchResults) {
            for (SObject record : searchResult) {
                accountResults.add((Account)record);
            }
        }
        
        return accountResults;
    }
}