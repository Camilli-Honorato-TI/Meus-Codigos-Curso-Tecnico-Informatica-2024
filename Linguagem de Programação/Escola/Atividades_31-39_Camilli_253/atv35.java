//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv35{
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);

        int idade;

        System.out.print("Qual sua idade? ");
        idade = var.nextInt();

        if(idade >= 5 && idade <= 7){
            System.out.println("O nadador está no infantil A.");
        }

        else if(idade >= 8 && idade <= 10){
            System.out.println("O nadador está no infantil B.");
        }

        else if(idade >= 11 && idade <= 13){
            System.out.println("O nadador está no juvenil A.");
        }

        else if(idade >= 14 && idade <= 17){
            System.out.println("O nadador está no juvenil B.");
        }

        else if(idade >= 18 && idade <= 25){
            System.out.println("O nadador está no sênior.");
        }
        else{
            System.out.println("O nadador está com a idade fora da faixa etária! ");
        }
    }
}