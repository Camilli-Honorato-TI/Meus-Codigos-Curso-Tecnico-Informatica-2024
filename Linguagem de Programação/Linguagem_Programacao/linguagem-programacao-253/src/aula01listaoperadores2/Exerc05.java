package aula01listaoperadores2;
import util.Util;

//Escreva um programa que declare variáveis para armazenar os preços de dois produtos.
// Solicite ao usuário que informe o preço do primeiro e do segundo produto. Em seguida,
// compare os preços e exiba uma mensagem indicando se o preço do primeiro produto é menor
// ou igual ao do segundo.

public class Exerc05 {
    public static void main(String[] args) {
        float preco1 = Util.solicitaNumeroDecimalFloat("Informe o primeiro preco do produto: ");
        float preco2 = Util.solicitaNumeroDecimalFloat("Informe o segundo preco do produto: ");
        boolean resultado= (preco1 <= preco2);

        Util.imprimeResultado("O primeiro produto tem o mesmo valor ou é maior que o primeiro? "+resultado);
    }
}
