//Camilli Vitória Salvaro Honorato
//253

import java.util.*;

public class atv27 {
    public static void main(String[] args) {
        Scanner var = new Scanner(System.in);
        float valorcarro,desconto, total;
        int combustivel;

        System.out.print("Informe o valor do veiculo: ");
        valorcarro = var.nextFloat();
        if(valorcarro == 0){
            return; // parar a execução do programa
        }
        
        System.out.println("Informe o tipo de combustivel: Ácool(1) Gasolina(2) ou Diesel(3):");
        combustivel = var.nextInt();
        

        if(combustivel == 1){
            desconto = (valorcarro * 25)/100;
            total = valorcarro - desconto;
            System.out.print("O desconto é de 25% por ser a álcool, o valor do carro é de: "+valorcarro+". Porém com o desconto fica: "+ total);
        }
        else if (combustivel == 2){
            desconto = (valorcarro * 21)/100;
            total = valorcarro - desconto;
            System.out.print("O desconto é de 21% por ser a gasolina, o valor do carro é de: "+valorcarro+". Porém com o desconto fica: "+ total);
        }
        else if( combustivel == 3){
            desconto = (valorcarro * 14)/100;
            total = valorcarro - desconto;
            System.out.print("O desconto é de 14% por ser a diesel, o valor do carro é de: "+valorcarro+". Porém com o desconto fica: "+ total);
        }
    }
}
