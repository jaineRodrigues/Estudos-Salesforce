@isTest
public class TestAtualizaLead {

    @isTest static void testUpdateColdRatingNotAllowed() {
        // Criar um novo lead com receita anual maior ou igual a 500000 e classificação Cold
        Lead leadCold = new Lead(
            FirstName = 'John',
            LastName = 'Doe',
            Company = 'ABC Company',
            AnnualRevenue = 500000,
            Rating = 'Cold'
        );
        
        insert leadCold; 
        
        Test.startTest();
        try {
            // Tentar atualizar a classificação para Cold (o que deve falhar devido à exceção de validação personalizada)
            Lead leadToUpdate = [SELECT Id, Rating FROM Lead WHERE Id = :leadCold.Id LIMIT 1];
            leadToUpdate.Rating = 'Cold'; // Tentar atualizar a classificação
            update leadToUpdate;
            System.assert(false, 'A atualização deveria ter falhado devido à exceção de validação personalizada.');
        } catch (DmlException e) {
            String errorMessage = e.getMessage();
            System.assertNotEquals(-1, errorMessage.indexOf('Você não pode atualizar para Cold, quando a receita anual é maior ou igual a 500000.'),
                                    'A mensagem de erro não foi retornada ao tentar atualizar a classificação para Cold com receita anual >= 500000.');
        }
        Test.stopTest();
    }

    @isTest static void testUpdateWarmRatingNotAllowed() {
        // Criar um novo lead com receita anual maior ou igual a 500000 e classificação Warm
        Lead leadWarm = new Lead(
            FirstName = 'Jane',
            LastName = 'Doe',
            Company = 'XYZ Company',
            AnnualRevenue = 600000,
            Rating = 'Warm'
        );
        
        insert leadWarm; 
        
        Test.startTest();
        try {
            // Tentar atualizar a classificação para Warm (o que deve falhar devido à exceção de validação personalizada)
            Lead leadToUpdate = [SELECT Id, Rating FROM Lead WHERE Id = :leadWarm.Id LIMIT 1];
            leadToUpdate.Rating = 'Warm'; // Tentar atualizar a classificação
            update leadToUpdate;
            System.assert(false, 'A atualização deveria ter falhado devido à exceção de validação personalizada.');
        } catch (DmlException e) {
            String errorMessage = e.getMessage();
            System.assertNotEquals(-1, errorMessage.indexOf('Você não pode atualizar para Warm, quando a receita anual é maior ou igual a 500000.'),
                                    'A mensagem de erro não foi retornada ao tentar atualizar a classificação para Warm com receita anual >= 500000.');
        }
        Test.stopTest();
    }

    @isTest static void testUpdateRatingAllowed() {
        // Criar um novo lead com receita anual menor que 500000 e classificação Cold
        Lead leadCold = new Lead(
            FirstName = 'John',
            LastName = 'Doe',
            Company = 'ABC Company',
            AnnualRevenue = 400000,
            Rating = 'Cold'
        );
        
        insert leadCold; // Inserir o lead
        
        Test.startTest();
        // Tentar atualizar a classificação para Cold
        Lead leadToUpdate = [SELECT Id, Rating FROM Lead WHERE Id = :leadCold.Id LIMIT 1];
        leadToUpdate.Rating = 'Cold'; // Tentar atualizar a classificação
        update leadToUpdate;
        Test.stopTest();
    }
}