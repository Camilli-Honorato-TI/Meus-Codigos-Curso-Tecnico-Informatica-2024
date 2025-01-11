package aula02listaIF2;

//Escreva um programa em Java que solicite a idade de uma pessoa e verifique se ela tem
// idade para votar (16 anos ou mais). Caso a pessoa tenha 16 anos ou mais, pergunte
// “Possui título de eleitor? (S/N)”. Utilize possuiTitulo.equalsIgnoreCase("S") para
// verificar a resposta. Exiba “A pessoa tem idade para votar e possui título de eleitor”
// caso ambas as condições sejam atendidas, ou “A pessoa não tem idade para votar ou
// não possui título de eleitor” caso contrário.

import util.Util;

public class Exerc04 {
    public static void main(String[] args) {
        int idade = Util.solicitaInt("Informe uma idade");
        if(idade >= 16){
            String possuiTitulo = String.valueOf(Util.solicitaPalavra("Possui titulo de eleitor? (S/N)").charAt(0));
            if(possuiTitulo.equalsIgnoreCase("S")){
                Util.imprimeResultado("Você está apto a votar");
            }else if (idade >=18){
                Util.imprimeResultado("Regularize sua situação ao TRE");
            }else{
                Util.imprimeResultado("Você nao pode  votar pois não possui titulo de eleitor.");
            }
        }
        else{
            Util.imprimeResultado("Você não tem idade para votar");
        }
    }

}
