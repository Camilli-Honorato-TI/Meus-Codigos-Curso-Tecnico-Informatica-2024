package aula01listaoperadores2;
import util.Util;

//Desenvolva um programa que declare variáveis para armazenar os anos de nascimento
// de duas pessoas. Solicite ao usuário que insira os anos de nascimento e, em seguida,
// compare os valores. O programa deve exibir uma mensagem indicando se a primeira pessoa
// é mais nova do que a segunda.

public class Exerc09 {
    public static void main(String[] args) {
        int ano1 = Util.solicitaInt("Informe o primeiro ano de nascimento: ");
        int ano2 = Util.solicitaInt("Informe o segundo ano de nascimento: ");
        boolean resultado = (ano1 > ano2);

        Util.imprimeResultado("A primeira pessoa é mais nova do que a segunda? "+resultado);
    }
}
