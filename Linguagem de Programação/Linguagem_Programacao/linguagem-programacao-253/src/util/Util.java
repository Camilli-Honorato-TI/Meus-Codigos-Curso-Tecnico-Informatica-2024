package util;

import java.util.Scanner;

public class Util {
    static Scanner ler = new Scanner(System.in);

    public static int solicitaInt(String msg){
        System.out.println(msg);
        return ler.nextInt();
    }

    public static String solicitaPalavra(String msg){
        System.out.println(msg);
        return ler.next();
    }

    public static double solicitaNumeroDecimal(String msg){
        System.out.println(msg);
        return ler.nextDouble();
    }

    public static void imprimeResultado(String msg){
        System.out.print(msg);
    }

    public static float solicitaNumeroDecimalFloat(String msg){
        System.out.println(msg);
        return ler.nextFloat();
    }

    public static char solicitaCaracter(String msg){
        System.out.println(msg);
        return ler.next().charAt(0);
    }

    public static boolean comparaNumerosIguais(int numero1, int numero2){
        return (numero1 == numero2);
    }
}

