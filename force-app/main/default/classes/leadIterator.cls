public with sharing class leadIterator {
    @AuraEnabled(cacheable=true)
    public static List<Lead> getleads() {
        return[
            SELECT Id, Name, Email FROM Lead 
            ORDER BY CreatedDate DESC  
            LIMIT 5
        ];
    }
}