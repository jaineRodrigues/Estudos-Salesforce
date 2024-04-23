public class OpportunitySearch {
    
    public static List<Opportunity> searchOpportunitiesByAmount(Date minCloseDate){
        List<Opportunity> opportunities = [SELECT Amount, CloseDate 
                                           FROM Opportunity 
                                           WHERE CloseDate > :minCloseDate
                                           ORDER BY Amount DESC
                                          ];        
        return opportunities;      
    }
}