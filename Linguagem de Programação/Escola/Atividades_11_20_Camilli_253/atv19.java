//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv19 {
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);

        String nome;
        int M = 0, F = 0, genero;

        for (int i = 0; i < 55; i++){
            System.out.println("Digite seu nome ");
            nome = var.nextLine();

            System.out.println("Digite seu genero(M(1) ou F(2)): ");
            genero = var.nextInt();
            if(genero == 1){
                M++;
            }else if(genero == 2){
                F++;
            }
            nome = var.nextLine(); //desbugar
        }
        System.out.println("No total teve: "+F+" mulheres e "+M+" homens");
    }
}
