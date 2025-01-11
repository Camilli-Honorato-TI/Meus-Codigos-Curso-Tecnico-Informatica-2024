package aula02listaIF2;

//Escreva um programa em Java que solicite ao usuário um número e verifique se ele
// é par ou múltiplo de 3. Exiba “O número é par ou múltiplo de 3” caso pelo menos uma
// das condições seja atendida, ou “O número não é par nem múltiplo de 3” caso contrário.

import util.Util;

public class Exerc02 {

    public static void main(String[] args) {
        int numero = Util.solicitaInt("Entre com um número");

        if(numero % 2 == 0 || numero % 3 == 0){
            Util.imprimeResultado("O número é par ou múltiplo de 3");
        }
        else{
            Util.imprimeResultado("O número não é par nem múltiplo de 3");
        }
    }

}
