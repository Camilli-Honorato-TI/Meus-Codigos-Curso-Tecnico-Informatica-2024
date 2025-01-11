//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv15 {
    
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);
         
            float n1;

            System.out.print("Digite um número: ");
            n1 = var.nextFloat();

            if(n1 >= 100 && n1<=200){
                System.out.print("O número " +n1+ " está entre 100 e 200.");

            }
            else{
                System.out.print("O número " +n1+ " não está entre 100 e 200");
            }
    }
}
