//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv30 {
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);
        String nome, genero;
        int idade;
        float salario, finalsalario;

        System.out.print("Digite seu nome: ");
        nome = var.nextLine();

        System.out.print("Informe seu gênero: (F)Feminino ou (M)Masculino: ");
        genero = var.nextLine();

        System.out.print("Informe sua idade: ");
        idade = var.nextInt();

        System.out.print("Informe seu salario: ");
        salario = var.nextFloat();

        if( genero.equals("F") && idade >= 30){
            finalsalario = salario + 200;
            System.out.print("O valor liquido de "+ nome+". É de: "+ finalsalario);
        }
        else if( genero.equals("F") && idade < 30){
            finalsalario = salario + 80;
            System.out.print("O valor liquido de "+ nome+". É de: "+ finalsalario);
        }
        else if( genero.equals("M") && idade >= 30){
        finalsalario = salario + 100;
        System.out.print("O valor liquido de "+ nome+". É de: "+ finalsalario);
         }
        else if( genero.equals("M") && idade < 30){
            finalsalario = salario + 50;
            System.out.print("O valor liquido de "+ nome+". É de: "+ finalsalario);
        }
}
}
