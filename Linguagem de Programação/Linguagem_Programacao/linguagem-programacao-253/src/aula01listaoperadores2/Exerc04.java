package aula01listaoperadores2;
import util.Util;

//Crie um programa que declare variáveis para armazenar as idades de duas pessoas.
// Solicite ao usuário que insira a idade da primeira e da segunda pessoa. Em seguida,
// compare as idades e exiba uma mensagem informando se a primeira pessoa é mais velha
//que a segunda.

public class Exerc04 {
    public static void main(String[] args) {
        int idade1 = Util.solicitaInt("Informe a primeira idade: ");
        int idade2 = Util.solicitaInt("Informe a segunda idade: ");
        boolean resultado = (idade1 > idade2);
        Util.imprimeResultado("A primeira pessoa é mais velha que a segunda?"+ resultado);
    }
}
