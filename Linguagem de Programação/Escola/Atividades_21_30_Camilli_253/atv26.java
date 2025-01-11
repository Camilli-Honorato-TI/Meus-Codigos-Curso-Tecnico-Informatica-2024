//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv26 {
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);
        int numero;

        System.out.print("Informe um número entre 1 e 5: ");
        numero = var.nextInt();

        if(numero == 1){
            System.out.println("O número 1 escrito por extenso é: Um");
        }
        else if(numero ==2){
            System.out.println("O número 2 escrito por extenso é: Dois");
        }
        else if(numero ==3){
            System.out.println("O número 3 escrito por extenso é: Três");
        }
        else if(numero ==4){
            System.out.println("O número 4 escrito por extenso é: Quatro");
        }
        else if(numero ==5){
            System.out.println("O número 5 escrito por extenso é: Cinco");
        }
        else{
            System.out.println("O número é invalido! ");
        }
    }
}
