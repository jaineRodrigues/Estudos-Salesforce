@isTest
public class TemperaturaConverterTeste {
    @isTest static void TestWarmTemp(){
        decimal celcius  = TemperaturaConverter.FahrenheitToCelcius(70);
        SysteM.AssertEquals(21.11, celcius);
    }
}