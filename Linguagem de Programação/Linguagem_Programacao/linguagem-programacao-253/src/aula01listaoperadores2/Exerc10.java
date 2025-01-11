package aula01listaoperadores2;
import util.Util;

//Desenvolva um programa que declare variáveis para armazenar duas palavras.
// Peça ao usuário que insira as palavras e, em seguida, compare a quantidade de
// letras de cada uma. O programa deve exibir uma mensagem indicando se a primeira
// palavra possui mais letras do que a segunda.

public class Exerc10 {
    public static void main(String[] args) {
        String palavra1 = Util.solicitaPalavra("Escreva uma palavra: ");
        String palavra2 = Util.solicitaPalavra("Escreva outra palavra: ");
        boolean resultado = (palavra1.length() > palavra2.length());

        Util.imprimeResultado("A primeira palavra possui mais letras doque a segunda?"+ resultado);
    }
}
