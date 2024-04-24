public with sharing class leadForEachController {
    @AuraEnabled(cacheable=true)
    public static List<Lead> getLeadsWithSource() {
        return [
            SELECT Id, Name, Email, LeadSource 
            FROM Lead 
            ORDER BY CreatedDate DESC 
            LIMIT 5
        ];
    }
}