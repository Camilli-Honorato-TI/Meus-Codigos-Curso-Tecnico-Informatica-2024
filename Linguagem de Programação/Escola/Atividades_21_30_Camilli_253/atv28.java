//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv28 {
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);

        float salario, novosalario, salariomin, conta, salmin3, salmin3a10, salmin10a20, folhap1, folhatotal =0;
        String nome;
        
        for(int i =0; i <584; i++){

        System.out.print("Informe seu nome: ");
        nome = var.nextLine();

        System.out.print("Informeu seu salario: ");
        salario = var.nextFloat();

        System.out.print("Informe o valor do salario minimo: ");
        salariomin = var.nextFloat();

        salmin3 = salariomin * 3;
        salmin3a10 = salariomin * 10;
        salmin10a20 = salariomin * 20;

        if (salario <= salmin3){
            conta = (salario * 50)/100;
            novosalario = conta + salario;
            System.out.println("O reajuste é de 50% para o funcionario: "+nome+". E seu novo salario é de: "+novosalario);
        }
        else if(salario > salmin3 && salario <= salmin3a10){
            conta = (salario * 20)/100;
            novosalario = conta + salario;
            System.out.println("O reajuste é de 20% para o funcionario: "+nome+". E seu novo salario é de: "+novosalario);
        }
        else if(salario > salmin3a10 && salario <= salmin10a20){
            conta = (salario * 15)/100;
            novosalario = conta + salario;
            System.out.println("O reajuste é de 15% para o funcionario: "+nome+". E seu novo salario é de: "+novosalario);
        }
        else{
            conta = (salario * 10)/100;
            novosalario = conta + salario;
            System.out.println("O reajuste é de 10% para o funcionario: "+nome+". E seu novo salario é de: "+novosalario);
        }

        folhap1 = novosalario - salario;
        folhatotal = folhatotal + folhap1;
        nome = var.nextLine();
        System.out.println("");


    }
    System.out.println("O aumento da folha de pagamento da empresa é de: "+folhatotal);
        }
    }
