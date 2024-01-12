import java.util.Scanner;

public class Main {
   static Scanner input = new Scanner(System.in);
    public static void main(String[] args) throws Exception {


        System.out.println("Hangi elemanı yazdırmak istiyorsunuz");
        checkArray();

    }

    public static void checkArray() throws Exception{
        int[] arrayList = {5,23,4,5,34,5,5,3,4,5};
        try {
             int select = input.nextInt();
             if (select >=arrayList.length){
                 throw new ExceptionArraylist();
             }
            System.out.println(arrayList[select]);
        }catch (ExceptionArraylist e){
            System.out.println(e);

        }




    }


}