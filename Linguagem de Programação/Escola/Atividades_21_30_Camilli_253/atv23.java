//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv23 {
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);
        int numero;

        System.out.print("Informe um numero: ");
        numero = var.nextInt();

        if(numero > 80 ){
            System.out.print("Este número é maior que 80");
        } else if(numero < 25){
            System.out.print("Este número é menor que 25");
        }else if(numero == 40){
            System.out.print("Este número é igual a 40");
        }
        else{
            System.out.print("Este número não é maior que 80, não é menor que 25 e não é igual a 40");
        }
    }
}
