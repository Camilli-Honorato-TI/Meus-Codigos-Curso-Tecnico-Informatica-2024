package aula01listaoperadores2;
import util.Util;

//Desenvolva um programa que declare variáveis para armazenar as alturas de duas pessoas.
// Solicite ao usuário que insira as alturas e, em seguida, compare-as.
// O programa deve exibir uma mensagem indicando se a altura da primeira pessoa é maior
// ou igual à altura da segunda.

public class Exerc07 {
    public static void main(String[] args) {
        float altura1 = Util.solicitaNumeroDecimalFloat("Informe a primeira altura:");
        float altura2 = Util.solicitaNumeroDecimalFloat("Informe a segunda altura: ");
        boolean resultado = (altura2 <= altura1);

        Util.imprimeResultado("A primeira pessoa é a maior ou do mesmo tamanho que a segunda? "+resultado);
    }
}
