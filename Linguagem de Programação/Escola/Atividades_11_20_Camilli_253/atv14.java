//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv14 {
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);

        float n1,n2;

        System.out.print("Digite um numero: ");
        n1 = var.nextFloat();

        System.out.print("Digite outro numero: ");
        n2 = var.nextFloat();

        if(n1 > n2){
            System.out.print("O primeiro número: " + n1 +" é maior que o segundo:"+n2);
        }
        else if(n1 <n2){
            System.out.print("O primeiro número: " + n1 +" é menor que o segundo: "+n2);
        }
        else{
            System.out.print("O primeiro número: " + n1 +" é igual que o segundo: "+n2);
        }

    }
    
}
