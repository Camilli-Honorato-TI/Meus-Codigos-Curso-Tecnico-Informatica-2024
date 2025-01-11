package aula01listaoperadores2;
import util.Util;

//Desenvolva um programa que declare duas variáveis para armazenar strings e
// solicite ao usuário que insira um texto para cada uma delas. Em seguida,
// compare os valores das duas strings e exiba uma mensagem indicando se elas são diferentes

public class Exerc03 {
    public static void main(String[] args) {
        String palavra1 = Util.solicitaPalavra("Escreva o primeiro texto: ");
        String palavra2 = Util.solicitaPalavra("Escreva o segundo texto: ");
        boolean resultado = !(palavra1.equals(palavra2));
        Util.imprimeResultado("As duas palavras tem tamanhos diferentes?"+ resultado);

    }
}
