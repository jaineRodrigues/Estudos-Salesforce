public class ContactSearch {

    public static List<Contact> searchContactsByAccount(Id accountId){
        
        List<Contact> validContactWithEmail = [SELECT Id, Name, Account.Name 
                                               FROM Contact
                                               WHERE Id = :accountId 
                                               AND Email != null
                                              ];
            
            return validContactWithEmail;
        
    }
}