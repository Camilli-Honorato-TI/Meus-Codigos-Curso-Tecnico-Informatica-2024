//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv13 {
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);
        float numero;

        System.out.print("Digite um número: ");
        numero = var.nextFloat();

        if(numero < 10){
            System.out.print("Este número é menor que 10");
        }
        else if(numero == 10){
            System.out.print("Este número é igual a 10");
        }
        else{
            System.out.print("Este número é maior que 10");
        }
    }

}
