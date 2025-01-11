//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv18 {
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);

        int idade;

        for (int i = 0; i < 74; i++){
            System.out.println("Digite uma idade: ");
            idade = var.nextInt();
            if(idade >= 18){
                System.out.println("Maior de idade");
            }else{
                System.out.println("Menor de idade ");
            }
        }
    }
}