public with sharing class recentContacWidgetController {
    // expoe o metodo pra ser usado no LWC
    @AuraEnabled(cacheable=true) 
    public static List<Contact> getContacts(){
        return [
            SELECT Id, Name, Email
            FROM Contact
            ORDER BY CreatedDate DESC 
            LIMIT 3
        ];
    }
}