//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv34{
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);

        int nivel, contahora;

        System.out.print("Informe seu nível de professor: ");
        nivel = var.nextInt();

        if(nivel == 1){
            contahora = 45 *12;
            System.out.print("O seu salario por aula é de: "+contahora);
        }
        else if(nivel == 2){
            contahora = 45 *17;
            System.out.print("O seu salario por aula é de: "+contahora);
        }
        else if(nivel == 3){
            contahora = 45 * 25;
            System.out.print("O seu salario por aula é de: "+contahora);
        }
        else{
            System.out.print("Este nivel não foi definido");
        }

    }
}