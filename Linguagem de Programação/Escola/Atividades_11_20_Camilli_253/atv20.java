//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv20 {
    public static void main(String[] args) {     
     Scanner var = new Scanner(System.in);
     String descontoopc;
     int opc;
     float valorcarro, anocarro, valortotal, descontoconta;

    System.out.print("Você deseja ver as opções de carro ou fazer um simulação de preço de outro carro da loja?(Opções(1) Simulação(2))");
    opc = var.nextInt();


    if( opc == 1){
        System.out.println("");
        System.out.println("-----------------------CARANGO VELHO-----------------------");
        System.out.println("|              Menu de carros:                             |");
        System.out.println("|Fiat Toro: R$76.076,00. Ano:2017            Opção:1       |");
        System.out.println("|Fiat Siena: R$43.153,00. Ano:1987           Opção:2       |");
        System.out.println("|Kia Soul: R$59.005,00. Ano:2000             Opção:3       |");
        System.out.println("|Chevrolet Tracker: R$134.476,00. Ano:2023   Opção:4       |");
        System.out.println("-----------------------------------------------------------");
        System.out.println("");
        System.out.print("Informe o número da opção:");
        opc = var.nextInt();
        
        if(opc ==1){ //Opção menu
            valorcarro = 76076;
            anocarro = 2017;
            System.out.print("Deseje adiquirir um desconto? (S ou N ): ");
            descontoopc = var.next(); //O nextLine não está funcionando

            if(descontoopc.equals("S") && anocarro <= 2000){ //Caso queria trocar o ano do carro a condição já está feita
                descontoconta = (valorcarro * 20)/100;
                valortotal = valorcarro - descontoconta;
                System.out.println("O valor do carro com 20% de desconto: "+valortotal);
            }
            else if(anocarro > 2000 && descontoopc.equals("S")) {
                descontoconta = (valorcarro * 7)/100;
                valortotal = valorcarro - descontoconta;
                System.out.println("O valor do carro com 7% de desconto é de: "+valortotal);
            }
            else if(descontoopc.equals("N")){
                System.out.println("O valor do carro é de: "+valorcarro);
            }
            else{
                System.out.print("Erro!");
            }
        }

        if(opc ==2){
            valorcarro = 43153;
            anocarro = 1987;
            System.out.print("Deseje adiquirir um desconto? (S ou N ): ");
            descontoopc = var.next(); //O nextLine não está funcionando

            if(descontoopc.equals("S") && anocarro <= 2000){ //Caso queria trocar o ano do carro a condição já está feita
                descontoconta = (valorcarro * 20)/100;
                valortotal = valorcarro - descontoconta;
                System.out.println("O valor do carro com 20% de desconto: "+valortotal);
            }
            else if(anocarro > 2000 && descontoopc.equals("S")) {
                descontoconta = (valorcarro * 7)/100;
                valortotal = valorcarro - descontoconta;
                System.out.println("O valor do carro com 7% de desconto é de: "+valortotal);
            }
            else if(descontoopc.equals("N")){
                System.out.println("O valor do carro é de: "+valorcarro);
            }
            else{
                System.out.print("Erro!");
            }
        }

        if(opc == 3){
            valorcarro = 59005;
            anocarro = 2000;
            System.out.print("Deseje adiquirir um desconto? (S ou N ): ");
            descontoopc = var.next(); //O nextLine não está funcionando

            if(descontoopc.equals("S") && anocarro <= 2000){ //Caso queria trocar o ano do carro a condição já está feita
                descontoconta = (valorcarro * 20)/100;
                valortotal = valorcarro - descontoconta;
                System.out.println("O valor do carro com 20% de desconto é de: "+valortotal);
            }
            else if(anocarro > 2000 && descontoopc.equals("S")) {
                descontoconta = (valorcarro * 7)/100;
                valortotal = valorcarro - descontoconta;
                System.out.println("O valor do carro com 7% de desconto é de: "+valortotal);
            }
            else if(descontoopc.equals("N")){
                System.out.println("O valor do carro é de: "+valorcarro);
            }
            else{
                System.out.print("Erro!");
            }
        }

        if(opc == 4){
            valorcarro = 134476;
            anocarro = 2023;
            System.out.print("Deseje adiquirir um desconto? (S ou N ): ");
            descontoopc = var.next(); //O nextLine não está funcionando

            if(descontoopc.equals("S") && anocarro <= 2000){ //Caso queria trocar o ano do carro a condição já está feita
                descontoconta = (valorcarro * 20)/100;
                valortotal = valorcarro - descontoconta;
                System.out.println("O valor do carro com 20% de desconto é de: "+valortotal);
            }
            else if(anocarro > 2000 && descontoopc.equals("S")) {
                descontoconta = (valorcarro * 7)/100;
                valortotal = valorcarro - descontoconta;
                System.out.println("O valor do carro com 7% de desconto é de: "+valortotal);
            }
            else if(descontoopc.equals("N")){
                System.out.println("O valor do carro é de: "+valorcarro);
            }
            else{
                System.out.print("Erro!");
            }
        }     
 }

    else if(opc == 2){ //Opção da simulação
        System.out.print("Digite o valor do carro: ");
        valorcarro = var.nextFloat();

        System.out.print("Informe o ano do carro: ");
        anocarro = var.nextFloat();

        System.out.print("Deseje adiquirir um desconto? (S ou N ): ");
        descontoopc = var.next(); //O nextLine não está funcionando

        if(descontoopc.equals("S") && anocarro <= 2000){
            descontoconta = (valorcarro * 20)/100;
            valortotal = valorcarro - descontoconta;
            System.out.println("O valor do carro com 20% de desconto é de: "+valortotal);
        }
        else if(anocarro > 2000 && descontoopc.equals("S")) {
            descontoconta = (valorcarro * 7)/100;
            valortotal = valorcarro - descontoconta;
            System.out.println("O valor do carro com 7% de desconto é de: "+valortotal);
        }
        else if(descontoopc.equals("N")){
            System.out.println("O valor do carro é de: "+valorcarro);
        }
        else{
            System.out.print("Erro!");
        }
 }
 }
}
