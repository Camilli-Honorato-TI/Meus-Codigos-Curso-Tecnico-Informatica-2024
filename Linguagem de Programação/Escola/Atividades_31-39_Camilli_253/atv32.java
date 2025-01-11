//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

 public class atv32{

    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);
        float nmr1, nmr2, calculo;
        char opcr;

        System.out.print("Informe a operação escrita: ");
        opcr = var.nextLine().charAt(0);
        System.out.print("Informe um Número: ");
        nmr1 = var.nextFloat();
        System.out.print("Informe outro Número: ");
        nmr2 = var.nextFloat();

        switch (opcr) {
            case '+':
            calculo = nmr1 + nmr2;
            System.out.print("O resultado da conta é: "+ calculo);
                break;

            case '-':
            calculo = nmr1 - nmr2;
            System.out.print("O resultado da conta é: "+ calculo);
                break;

            case '*':
            calculo = nmr1 * nmr2;
            System.out.print("O resultado da conta é: "+ calculo);
                break;

            case '/':
            if( nmr1 == 0 || nmr2 == 0){
                System.out.print("Erro!");
                break;
            }
            calculo = nmr1 / nmr2;
            System.out.print("O resultado da conta é: "+ calculo);
                break;  
                
            default:
            System.out.print("Operador não definido ");

        }
    }
}