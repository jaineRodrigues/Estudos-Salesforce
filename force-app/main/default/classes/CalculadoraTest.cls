@isTest
private class CalculadoraTest {
    //testes positivo
    @isTest
    static void TestAdicao(){
        decimal result = calculadora.adicao(4,2);
        system.assertEquals(6, result);
    }
    
	@isTest
    static void Testsubtracao(){
        decimal result = calculadora.subtracao(4,2);
        system.assertEquals(2, result);
    }
    
    @isTest
    static void TestDivisao(){
        decimal result = calculadora.divisao(20,2);
        system.assertEquals(10, result);
    }
    
    @isTest
    static void Testmultiplocacao(){
        decimal result = calculadora.multiplicacao(5,5);
        system.assertEquals(25, result);
    }  
    
    
    //testes contrario
}