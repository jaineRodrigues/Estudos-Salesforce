public class TemperaturaConverter {
//Pega uma temperatura em Fahrenheit e retornar em Celsius   
public static Decimal FahrenheitToCelcius(Decimal fh){
        decimal cs = (fh - 32) * 5/9;
        return cs.setscale(2);
    }
}