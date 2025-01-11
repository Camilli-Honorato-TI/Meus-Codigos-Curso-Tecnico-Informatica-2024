//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv24 {
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);
        float numero;

        for(int i =0; i <4; i++){

        System.out.print("Informe um numero: ");
        numero = var.nextFloat();

        if(numero > 0){
            System.out.println("Este número é positivo");
        } else if(numero < 0){
            System.out.println("Este número é negativo");
        }
        else{
            System.out.println("Este número é igual a 0");
        }
    }
    }
}

