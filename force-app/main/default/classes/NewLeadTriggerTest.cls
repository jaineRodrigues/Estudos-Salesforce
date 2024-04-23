@isTest
public class NewLeadTriggerTest {

    // Teste positivo para garantir que os campos são modificados corretamente
    @isTest
    static void testPositiveScenario() {
        // Criar um novo lead
        Lead testnewLead = new Lead(
            FirstName = 'Test',
            LastName = 'Lead',
            Company = 'Test Company',
            AnnualRevenue = 0
        );

        Test.startTest();
        try {
            // Inserir o lead
            insert testnewLead;
        } catch(Exception e) {
            // Se ocorrer um erro durante a inserção, exibir uma mensagem de erro
            System.debug('Erro durante a inserção do lead: ' + e.getMessage());
        }
        Test.stopTest();

        System.assertEquals('(XX) XXXXX - XXXX', testnewLead.Fax);
        System.assertEquals('www.example.com', testnewLead.Website);
        System.assertEquals(0, testnewLead.AnnualRevenue);
    }

    // Teste negativo para garantir que os campos não são modificados incorretamente
    @isTest
    static void testNegativeScenario() {
        // Criar um novo lead com os campos que devem ser modificados pela trigger preenchidos
        Lead testLead = new Lead(
            FirstName = 'Test',
            LastName = 'Lead',
            Company = 'Test Company',
            Fax = '(123) 456 - 7890',
            Website = 'www.testwebsite.com',
            AnnualRevenue = 10000
        );

        Test.startTest();
        try {
            // Inserir o lead
            insert testLead;
        } catch(Exception e) {
            // Se ocorrer um erro durante a inserção, exibir uma mensagem de erro
            System.debug('Erro durante a inserção do lead: ' + e.getMessage());
        }
        Test.stopTest();

        System.assertNotEquals('(XX) XXXXX - XXXX', testLead.Fax);
        System.assertNotEquals('www.example.com', testLead.Website);
        System.assertNotEquals(0, testLead.AnnualRevenue);
    }
}