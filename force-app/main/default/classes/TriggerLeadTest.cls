@isTest
public class TriggerLeadTest {
    static testMethod void TestPositive(){
        Lead lead1 = new Lead(
            FirstName = 'John',
            LastName = 'Doe',
            Phone = '(11)1111-1111',
            Company = 'DBC',
            AnnualRevenue = 11000
        );
        
        Lead lead2 = new Lead(
            FirstName = 'Jane',
            LastName = 'Smith',
            Phone = '(11)2222-2222',
            Company = 'DBC',
            AnnualRevenue = 9000
        );
        
        Lead lead3 = new Lead(
            FirstName = 'Alice',
            LastName = 'Johnson',
            Phone = '(11)3333-3333',
            Company = 'DBC',
            AnnualRevenue = 110000
        );
        
        insert lead1;
        insert lead2;
        insert lead3;
        
        List<Lead> leads = [SELECT Id, Fax, Website, AnnualRevenue, Rating FROM Lead WHERE Id IN :new Set<Id>{lead1.Id, lead2.Id, lead3.Id}];
        
        for(Lead retrievedLead : leads) {
            System.AssertEquals('', retrievedLead.Fax);
            System.AssertEquals('undefined', retrievedLead.Website);
            
            if(retrievedLead.AnnualRevenue == 11000) {
                System.AssertEquals('Warm', retrievedLead.Rating);
            } else if(retrievedLead.AnnualRevenue == 9000) {
                System.AssertEquals('Cold', retrievedLead.Rating);
            } else if(retrievedLead.AnnualRevenue == 110000) {
                System.AssertEquals('Hot', retrievedLead.Rating);
            }
        }
    }
    
     static testMethod void TestNegative(){
          Lead lead1 = new Lead(
            FirstName = 'Bob',
            LastName = 'Smith',
            Phone = '(11)4444-4444',
            Company = 'DBC',
            AnnualRevenue = 100000
        );
        
        Lead lead2 = new Lead(
            FirstName = 'Eve',
            LastName = 'Anderson',
            Phone = '(11)5555-5555',
            Company = 'DBC',
            AnnualRevenue = 900000
        );
        
        Lead lead3 = new Lead(
            FirstName = 'Charlie',
            LastName = 'Brown',
            Phone = '(11)6666-6666',
            Company = 'DBC',
            AnnualRevenue = 1
        );
        
        insert lead1;
        insert lead2;
        insert lead3;
        
        List<Lead> leads = [SELECT Id, Fax, Website, AnnualRevenue, Rating FROM Lead WHERE Id IN :new Set<Id>{lead1.Id, lead2.Id, lead3.Id}];
        
        for(Lead retrievedLead : leads) {
            System.AssertEquals('', retrievedLead.Fax);
            System.AssertEquals('undefined', retrievedLead.Website);
            
            if(retrievedLead.AnnualRevenue == 11000) {
                System.AssertNotEquals('Warm', retrievedLead.Rating);
            } else if(retrievedLead.AnnualRevenue == 9000) {
                System.AssertNotEquals('Cold', retrievedLead.Rating);
            } else if(retrievedLead.AnnualRevenue == 110000) {
                System.AssertNotEquals('Hot', retrievedLead.Rating);
            }
        }
    }
}