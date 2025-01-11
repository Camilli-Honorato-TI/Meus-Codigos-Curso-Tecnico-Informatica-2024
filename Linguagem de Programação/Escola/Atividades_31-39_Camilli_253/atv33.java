//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv33{
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);

        int lado1 , lado2 , lado3, soma1, soma2, soma3;

        System.out.print("Digite o valor do primeiro lado: ");
        lado1 = var.nextInt();

        System.out.print("Digite o valor do segundo lado: ");
        lado2 = var.nextInt();

        System.out.print("Digite o valor do terceiro lado: ");
        lado3 = var.nextInt();
         
         soma1 = lado1 + lado2;
         soma2= lado2 + lado3;
         soma3 =lado1 + lado3;


         if( soma1 < lado3){
            System.out.println("Esses valores não correspondem a um triângulo.");
        }
        else if( soma2 < lado1){
            System.out.println("Esses valores não correspondem a um triângulo.");
        }
        else if( soma3 < lado2){
            System.out.println("Esses valores não correspondem a um triângulo.");
        }
        else if (lado1 == lado2 && lado2 == lado3){
            System.out.println("O triângulo é equilátero. ");
        }

        else if (lado1 == lado2 || lado2 == lado3 || lado1 == lado3){
            System.out.println("O triângulo é isósceles. ");
        }
        else if(lado1 != lado2 || lado2 != lado3 || lado3 != lado1){
            System.out.println("O triângulo é escaleno. ");
        }  
        
         
    }
}
