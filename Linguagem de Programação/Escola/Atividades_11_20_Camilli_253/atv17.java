//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv17 {
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);

        int i = 0;
        int numero;
        int entrenumero = 0;

        while(i < 79){
            System.out.println("Digite um número: ");
            numero = var.nextInt();
            if(numero >= 10 && numero <= 150){
                entrenumero ++;
            }

            i++;
        }
        System.out.print("Entre o número 10 e 150 foram digitados: "+entrenumero);
    }
}
