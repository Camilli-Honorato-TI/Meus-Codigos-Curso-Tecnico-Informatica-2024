//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv21 {
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);

        String nome, genero, saude;
        int idade;

        for( int i=0; i < 5; i++){
            System.out.print("Informe seu nome: ");
            nome = var.nextLine();

            System.out.print("Informe seu gênero: ");
            genero = var.nextLine();

            System.out.print("Informe sua idade: ");
            idade= var.nextInt();

            System.out.print("Você considera sua saúde boa ou ruim? ");
            saude = var.next();
            
            if(saude.equals("boa")&& idade >=18){
                System.out.println("O cidadão: "+ nome +". Do gênero: "+ genero + ", com a idade de: "+ idade +". com a saúde:" +saude+ ". Está apto a servir:");
            }
            else {
                System.out.println("O cidadão: "+ nome +". Do gênero: "+ genero + ", com a idade de: "+ idade +". com a saúde:" +saude+ ". Não está apto a servir:");
            }
        }

    }  
}
