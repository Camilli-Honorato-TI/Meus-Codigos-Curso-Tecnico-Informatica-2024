//Camilli Vitória Salvaro Honorato
//253

import java.util.*;
import java.text.DecimalFormat;

public class atv16 {
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);
        DecimalFormat formatador = new DecimalFormat("0.0"); //Definir a quantidade de números depois da virgula

        float nota1, nota2, nota3, media;
        String nomealuno;

        System.out.println("Informe o nome do aluno: ");
        nomealuno = var.nextLine();
    
        System.out.println("Digite a primeira nota: ");
        nota1 = var.nextFloat();

        System.out.println("Digite a segunda nota: ");
        nota2 = var.nextFloat();

        System.out.println("Digite a terceira nota: ");
        nota3 = var.nextFloat();

        media = (nota1 + nota2 + nota3)/3;

        if(media >= 7){
            System.out.println("O aluno "+nomealuno+ " com  a média: "+ formatador.format(media) + ". Está aprovado!");
        }
        else if(media >= 5.1 && media <= 6.9){
            System.out.println("O aluno "+nomealuno+ " com  a média: "+ formatador.format(media) + ". Está em recuperação!");
        }
        else{
            System.out.println("O aluno "+nomealuno+ " com  a média: "+ formatador.format(media) + ". Está reprovado!");
        }
    }   

}
