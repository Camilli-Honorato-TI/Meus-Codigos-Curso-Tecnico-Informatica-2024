//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv29 {
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);
        int mes;

        System.out.print("Informe o número de um mês: ");
        mes = var.nextInt();

        if( mes > 12){
        while (mes > 12) {
            mes = mes -12;
            
        }
    }


        if(mes == 1){
            System.out.println("Este mês é Janeiro!");
        }
        else if( mes == 2){
            System.out.println("Este mês é Fevereiro!");
        }
        else if( mes == 3){
            System.out.println("Este mês é Março!");
        }
        else if( mes == 4){
            System.out.println("Este mês é Abril!");
        }
        else if( mes == 5){
            System.out.println("Este mês é Maio!");
        }
        else if( mes == 6){
            System.out.println("Este mês é Junho!");
        }
        else if( mes == 7){
            System.out.println("Este mês é Julho!");
        }
        else if( mes == 8){
            System.out.println("Este mês é Agosto!");
        }
        else if( mes == 9){
            System.out.println("Este mês é Setembro!");
        }
        else if( mes == 10){
            System.out.println("Este mês é Outubro!");
        }
        else if( mes == 11){
            System.out.println("Este mês é Novembro!");
        }
        else if( mes == 12){
            System.out.println("Este mês é Dezembro!");
        }

        }
    }

