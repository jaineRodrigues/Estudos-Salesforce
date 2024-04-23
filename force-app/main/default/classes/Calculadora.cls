public class Calculadora {
    
    // Método para realizar a adição
    public static Decimal adicao(Decimal num1, Decimal num2) {
        return num1 + num2;
    }
    
    // Método para realizar a subtração
    public static Decimal subtracao(Decimal num1, Decimal num2) {
        return num1 - num2;
    }
    
    // Método para realizar a multiplicação
    public static Decimal multiplicacao(Decimal num1, Decimal num2) {
        return num1 * num2;
    }
    
    // Método para realizar a divisão
    public static Decimal divisao(Decimal num1, Decimal num2) {
        if (num2 == 0) {
            // Tratamento de divisão por zero
            throw new System.MathException('Divisão por zero não é permitida.');
        }
        return num1 / num2;
    }
}