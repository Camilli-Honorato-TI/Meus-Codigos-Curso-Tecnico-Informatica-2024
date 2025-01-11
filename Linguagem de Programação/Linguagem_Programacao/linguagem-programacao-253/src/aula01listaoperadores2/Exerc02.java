package aula01listaoperadores2;
//Crie um programa que declare duas variáveis para armazenar números reais,
// solicite que o usuário insira os valores e, por fim, verifique e exiba se o
// primeiro número é maior que o segundo.

import util.Util;

public class Exerc02 {
    public static void main(String[] args) {

        double valor1 = Util.solicitaNumeroDecimal("Informe o primeiro valor: ");
        double valor2 = Util.solicitaNumeroDecimal("Informe o segundo valor: ");
        boolean resultado = (valor1 > valor2);

        Util.imprimeResultado("O primeiro valor é maior que o segundo? " + resultado);

    }
}
