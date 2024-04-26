public with sharing class getRecordsLead {
    @AuraEnabled(cacheable=true)
    public static List<Lead> getRecords() {
        return[
            SELECT Id, Name, Email, Status, Company FROM Lead 
            ORDER BY CreatedDate DESC  
            LIMIT 5
        ];
    }
}

