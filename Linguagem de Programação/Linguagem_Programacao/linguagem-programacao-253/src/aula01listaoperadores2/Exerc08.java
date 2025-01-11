package aula01listaoperadores2;
import util.Util;

//Desenvolva um programa que declare variáveis para armazenar duas strings.
// Solicite ao usuário que insira as duas strings e, em seguida, compare os seus tamanhos.
// O programa deve exibir uma mensagem indicando se o tamanho da primeira string é menor
// que o tamanho da segunda.

public class Exerc08 {
    public static void main(String[] args) {
        String tamanho1 = Util.solicitaPalavra("Informe a primeira palavra:");
        String tamanho2 = Util.solicitaPalavra("Informe a segunda palavra");
        boolean resultado = (tamanho1.length() < tamanho2.length());

        Util.imprimeResultado("O primeiro valor tem o tamanho menor do que o segundo? "+resultado);

    }
}
