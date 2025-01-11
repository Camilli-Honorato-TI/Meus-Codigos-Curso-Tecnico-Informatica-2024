package aula02listaIF2;

//Escreva um programa em Java que solicite ao usuário um número e verifique se ele é
// negativo ou está no intervalo entre 5 e 15 (inclusive). Exiba “O número é negativo
// ou está entre 5 e 15” caso pelo menos uma das condições seja atendida, ou
// “O número não é negativo e não está entre 5 e 15” caso contrário.

import util.Util;

public class Exerc05 {
    public static void main(String[] args) {
        int numero = Util.solicitaInt("Informe um número: ");
        if(numero < 0 || (numero >= 5 && numero <= 15)){
            Util.imprimeResultado("O numero é negativo ou está entre 5 e 15");
        }else{
            Util.imprimeResultado("O número não é negativo ou não está entre 5 e 15");
        }
    }
}
