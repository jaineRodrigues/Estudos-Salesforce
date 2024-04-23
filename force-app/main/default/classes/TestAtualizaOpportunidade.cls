@isTest
public class TestAtualizaOpportunidade {

    @isTest static void testStageClosedLostWithoutReason() {
        // Criar uma nova oportunidade com a fase como Closed Lost e motivo vazio
        Opportunity opp = new Opportunity(Name = 'Test Opportunity', StageName = 'Closed Lost', CloseDate = Date.today());
        
        // Tentar inserir a oportunidade
        try {
            insert opp;
            System.assert(false, 'A inserção deveria ter falhado devido ao motivo vazio.');
        } catch (DmlException e) {
            // Verificar se a mensagem de erro esperada foi lançada
            System.assert(e.getMessage().contains('O motivo deve ser preenchido ao marcar a oportunidade como "Closed Lost".'), 'Mensagem de erro não encontrada.');
        }
    }

    @isTest static void testStageClosedLostWithReason() {
        // Criar uma nova oportunidade com a fase como Closed Lost e motivo preenchido
        Opportunity opp = new Opportunity(Name = 'Test Opportunity', StageName = 'Closed Lost', Lost_Reason__c = 'Preço muito alto', CloseDate = Date.today());
        
        // Tentar inserir a oportunidade
        try {
            insert opp;
        } catch (DmlException e) {
            System.assert(false, 'A inserção não deveria ter falhado.');
        }
    }

    @isTest static void testStageNotClosedLost() {
        // Criar uma nova oportunidade com a fase não sendo Closed Lost
        Opportunity opp = new Opportunity(Name = 'Test Opportunity', StageName = 'Prospecting', CloseDate = Date.today());
        
        // Tentar inserir a oportunidade
        try {
            insert opp;
        } catch (DmlException e) {
            System.assert(false, 'A inserção não deveria ter falhado.');
        }
    }

    @isTest static void testStageClosedLostWithReasonUpdate() {
        // Criar uma nova oportunidade com a fase como Closed Lost e motivo vazio
        Opportunity opp = new Opportunity(Name = 'Test Opportunity', StageName = 'Prospecting', CloseDate = Date.today());
        insert opp;
        
        // Atualizar a oportunidade para a fase Closed Lost sem motivo
        opp.StageName = 'Closed Lost';
        
        // Tentar atualizar a oportunidade
        try {
            update opp;
            System.assert(false, 'A atualização deveria ter falhado devido ao motivo vazio.');
        } catch (DmlException e) {
            // Verificar se a mensagem de erro esperada foi lançada
            System.assert(e.getMessage().contains('O motivo deve ser preenchido ao marcar a oportunidade como "Closed Lost'));
        }
    }

    @isTest static void testStageClosedLostWithReasonUpdateSuccess() {
        // Criar uma nova oportunidade com a fase como Closed Lost e motivo preenchido
        Opportunity opp = new Opportunity(Name = 'Test Opportunity', StageName = 'Prospecting', CloseDate = Date.today());
        insert opp;
        
        // Atualizar a oportunidade para a fase Closed Lost com motivo
        opp.StageName = 'Closed Lost';
        opp.Lost_Reason__c = 'Preço muito alto';
        
        // Tentar atualizar a oportunidade
        try {
            update opp;
        } catch (DmlException e) {
            System.assert(false, 'A atualização não deveria ter falhado.');
        }
    }
}