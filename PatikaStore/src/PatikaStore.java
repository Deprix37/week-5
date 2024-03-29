import java.util.Scanner;

public class PatikaStore {
    Scanner scanner = new Scanner(System.in);
    boolean isRunning = true;
    public void run(){
        while (isRunning == true){
            System.out.println("Patika Store Yönetim Paneli");
            System.out.println("1- Notebook İşlemleri \n" +
                    "2- Cep Telefonu İşlemleri \n" +
                    "3- Markaları Listeleme \n" +
                    "0- Çıkış Yap ");
            System.out.print("Yapmak istediğiniz işlemi seçiniz: ");
            int selection = scanner.nextInt();
            switch (selection){
                case 1:
                    Notebook notebook = new Notebook();
                    notebook.runNenu();
                    break;
                case 2:
                    Phone phone = new Phone();
                    phone.runNenu();
                    break;
                case 3:
                    Brand brand = new Brand();
                    brand.printBrand();
                    break;
                case 0:
                    System.out.println("Çıkış yapıldı");
                    isRunning = false;
                    break;
                default:
                    System.out.println("Hatalı bir değer girdiniz.");
            }


        }
    }
}
