//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv22{
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);
        float custo,venda, mediacusto = 0, mediavenda =0;

        for( int i =0; i < 40; i++){

        System.out.print("Informe o custo do produto:");
        custo = var.nextFloat();

        System.out.print("Informe o custo de venda do produto:");
        venda = var.nextFloat();

        if(custo < venda){
            System.out.println("Este produto teve lucro!");
        }
        else if(custo == venda){
            System.out.println("Este produto teve empate! ");
        }
        else{
            System.out.println("Este produto teve prejuizo! ");
        }

        mediacusto = custo + mediacusto;
        mediavenda = venda + mediavenda;

        }

        System.out.println("A média de custo é de: "+mediacusto /40); //Coloquei a divisão aqui no final para não ter que criar outra variavel 
        System.out.println("A média de venda é de: "+mediavenda / 40);
    }
}