package aula02listaIF2;

//Escreva um programa em Java que solicite ao usuário um número e verifique se ele é
// maior que 10 e menor que 100. Exiba “O número é maior que 10 e menor que 100” caso
// ambas as condições sejam atendidas, ou “O número não está no intervalo entre 10 e 100”
// caso contrário.

import util.Util;

public class Exerc03 {
    public static void main(String[] args) {
       int numero = Util.solicitaInt("Informe um numero");
       if (numero > 10 && numero < 100){
           Util.imprimeResultado("O número é maior que 10 menor que 100");
       }else {
           Util.imprimeResultado("O número nao está no intervalo entre 10 e 100");
       }
    }

}
