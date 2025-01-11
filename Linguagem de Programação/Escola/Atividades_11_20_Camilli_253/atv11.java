//Camilli Vitória Salvaro Honorato
//253 

import java.util.*;

public class atv11{
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);

        float valorproduto, valorvenda,acrescimo, valortotal;

        System.out.print("Informe o valor do produto: ");
        valorproduto = var.nextFloat();

        System.out.print("Informe o valor de acrescimo da porcentagem: ");
        acrescimo = var.nextFloat();

        valorvenda = (valorproduto * acrescimo)/100;
        valortotal = valorvenda + valorproduto;

        System.out.print("O valor do produto para venda é de: "+valortotal);


    
    }
}