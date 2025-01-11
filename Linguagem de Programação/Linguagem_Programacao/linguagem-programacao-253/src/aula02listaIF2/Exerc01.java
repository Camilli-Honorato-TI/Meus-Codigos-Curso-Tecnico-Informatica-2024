package aula02listaIF2;

//Escreva um programa em Java que solicite ao usuário uma palavra e verifique se
// ela começa com a letra “a” e termina com a letra “z” (desconsiderando maiúsculas
// e minúsculas). Utilize os métodos startsWith("a") e endsWith("z") para realizar
// as verificações. Exiba “A palavra começa com ‘a’ e termina com ‘z’” caso ambas
// as condições sejam atendidas, ou “A palavra não começa com ‘a’ ou não termina
// com ‘z’” caso contrário.

import util.Util;

public class Exerc01 {
    public static void main(String[] args) {
        String palavra = Util.solicitaPalavra("Entre com uma palavra: ").toLowerCase();
        if(palavra.startsWith("a") && palavra.endsWith("z")){
            Util.imprimeResultado("A palavra começa com 'a' e terminar com 'z'! ");
        }else{
            Util.imprimeResultado("A palavra não começa com 'a' e/ou não termina com 'z' ");
        }
    }

}
