public class LeadSearch {
    public static List<Lead> searchLeads(String query) {
        List<List<SObject>> searchResults = [FIND :query IN ALL FIELDS RETURNING Lead];
        List<Lead> leads = new List<Lead>();
        
        for (List<SObject> searchResult : searchResults) {
            for (SObject record : searchResult) {
                if (record instanceof Lead) {
                    leads.add((Lead)record);
                }
            }
        }
        
        return leads;
    }
}