//Camilli Vitória Salvaro Honorato
//253

import java.util.*;
import java.text.DecimalFormat;

public class atv12 {
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);
        DecimalFormat formatador = new DecimalFormat("0.00"); //Definir a quantidade de números depois da virgula

        float custofabrica,porcentdist, imposto, valorporcent, valortotal, valorconta1,valorconta2;

        System.out.print("Informe o valor do custo de fabrica do carro: ");
        custofabrica = var.nextFloat();

        System.out.print("Informe a porcentagem do distribuidor: ");
        porcentdist = var.nextFloat();

        System.out.print("Informe o valor dos impostos sobre o carro: ");
        imposto = var.nextFloat();

        valorconta1 = (custofabrica * imposto)/100;
        valorporcent = custofabrica + valorconta1;
        valorconta2 = (valorporcent * porcentdist)/100;
        valortotal = valorporcent + valorconta2;

        System.out.print("O valor do carro, somado com o valor de fabrica, porcentagem do distribuidor e imposto é de: "+ formatador.format(valortotal));

    }
}