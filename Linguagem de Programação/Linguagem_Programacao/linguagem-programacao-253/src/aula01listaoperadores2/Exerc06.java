package aula01listaoperadores2;
import util.Util;

//Desenvolva um programa que declare variáveis para armazenar dois caracteres.
// Peça ao usuário que insira os dois caracteres e, em seguida, compare-os.
// O programa deve exibir uma mensagem indicando se os caracteres são iguais ou diferentes.

public class Exerc06 {
    public static void main(String[] args) {
        char caracter1 = Util.solicitaCaracter("Informe o primeiro caracter: ");
        char caracter2 = Util.solicitaCaracter("Informe o segundo caracter: ");
        boolean resultado = (caracter1 == caracter2);

        Util.imprimeResultado("O primeiro caracter é igual ao segundo? "+resultado);

    }
}
