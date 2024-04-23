@isTest
public class TestCreateOpportunidade {

    @isTest static void testZeroAmountAndCloseDate() {
        // Criar uma nova oportunidade com valor zerado e data de fechamento para 15 dias após a data de criação
        Opportunity opp = new Opportunity(
            Name = 'Test Opportunity',
            Amount = 0,
            CloseDate = Date.today(),
            StageName = 'Prospecting'
        );
        
        // Inserir a oportunidade
        insert opp;
        
        // Recuperar a oportunidade após a inserção
        opp = [SELECT Amount, CloseDate FROM Opportunity WHERE Id = :opp.Id];
        
        // Verificar se o valor da oportunidade foi ajustado para zero
        System.assertEquals(0, opp.Amount, 'O valor da oportunidade não foi definido como zero.');
        
        // Verificar se a data de fechamento foi ajustada para 15 dias após a data de criação
        Date expectedCloseDate = Date.today().addDays(15);
        System.assertEquals(expectedCloseDate, opp.CloseDate, 'A data de fechamento não foi definida corretamente.');
    }

    @isTest static void testNonZeroAmountOrIncorrectCloseDate() {
        // Criar uma nova oportunidade com valor não zerado e/ou data de fechamento incorreta
        Opportunity opp = new Opportunity(
            Name = 'Test Opportunity',
            Amount = 1000, // Definir um valor não zerado
            CloseDate = Date.today().addDays(10), // Definir uma data de fechamento incorreta
            StageName = 'Prospecting'
        );
        
        // Inserir a oportunidade
        insert opp;
        
        // Recuperar a oportunidade após a inserção
        opp = [SELECT Amount, CloseDate FROM Opportunity WHERE Id = :opp.Id];
        
        // Verificar se o valor da oportunidade não foi alterado para zero
        System.assertNotEquals(0, opp.Amount, 'O valor da oportunidade foi alterado incorretamente.');
        
        // Verificar se a data de fechamento não foi ajustada para 15 dias após a data de criação
        Date originalCloseDate = Date.today().addDays(10);
        System.assertEquals(originalCloseDate, opp.CloseDate, 'A data de fechamento foi alterada incorretamente.');
    }
}