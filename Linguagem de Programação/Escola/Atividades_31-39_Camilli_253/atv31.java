//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv31{
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);

        int v1, v2, v3;

        System.out.print("Digite o primeiro valor: ");
        v1 = var.nextInt();

        System.out.print("Digite o segundo valor: ");
        v2 = var.nextInt();

        System.out.print("Digite o terceiro valor: ");
        v3 = var.nextInt();

        if (v1 > v2 && v1 > v3 && v2 > v3) {
            System.out.println("O maior número é " +v1+ " o segundo número é " +v2+ " e o menor número é " +v3);
        }

        else if (v1 > v2 && v1 > v3 && v3 > v2) {
            System.out.println("O maior número é " +v1+ " o segundo número é " +v3+ " e o menor número é " +v2);
        } 
        else if (v2 > v1 && v2 > v3 && v1 > v3) {
            System.out.println("O maior número é " +v2+ " o segundo número é " +v1+ " e o menor número é " +v3);
        }
        else if (v2 > v1 && v2 > v3 && v3 > v1) {
            System.out.println("O maior número é " +v2+ " o segundo número é " +v3+ " e o menor número é " +v1);
        }
        else if (v3 > v2 && v3 > v1 && v2 > v1) {
            System.out.println("O maior número é " +v3+ " o segundo número é " +v2+ " e o menor número é " +v1);
        }
        else{
            System.out.println("O maior número é " +v3+ " o segundo número é " +v1+ " e o menor número é " +v2);
        }
    }
}