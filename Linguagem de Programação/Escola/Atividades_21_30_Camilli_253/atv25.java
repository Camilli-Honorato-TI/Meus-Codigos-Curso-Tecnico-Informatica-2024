//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv25 {
    public static void main(String[] args) {
        Scanner var =new Scanner(System.in);
        int num1, num2;

        System.out.print("Informe um numero: ");
        num1 = var.nextInt();

        System.out.print("Informe outro numero: ");
        num2 = var.nextInt();

        if( num1 == num2){
            System.out.println("Estes números são iguais!");
        }
        else if(num1 > num2){
            System.out.println("Estes números são diferentes!");
            System.out.println("O número: "+ num1 +". É maior que o número: "+num2);
        }
        else{
            System.out.println("Estes números são diferentes!");
            System.out.println("O número: "+ num2 +". É maior que o número: "+num1);
        }

    }
}
