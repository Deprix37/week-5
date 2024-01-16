import java.util.TreeSet;

// Press Shift twice to open the Search Everywhere dialog and type `show whitespaces`,
// then press Enter. You can now see whitespace characters in your code.
public class Main {
    public static void main(String[] args) {
        TreeSet<Book> bookList = new TreeSet<>(new OrderNameComperable());
        bookList.add(new Book("Zengin Baba Yoksul Baba" ,396,"Robert Kıyosaki" , "01/01/2024" ));
        bookList.add(new Book("Silmarillion" ,684,"J.R.R Tolkien" , "01/01/2024" ));
        bookList.add(new Book("Nefes Nefesi" ,372,"Ayşe Kulin" , "01/01/2025" ));
        bookList.add(new Book("Kuyucaklı Yusuf" ,222,"Sabahattin Ali" , "01/01/2022" ));
        bookList.add(new Book("Taşşakuk-ı Talat ve Fitnat" ,111,"Şemsettin Sami" , "03/02/2023" ));

        TreeSet<Book> bookList2 = new TreeSet<>(new OrderPageNumberComperable().reversed());
        bookList2.addAll(bookList);

        System.out.println("Kitaplarınızın İsmine göre alfabatik sıralanışı");
        System.out.println("--------------------------------------------------");
        for (Book booklist : bookList){
            System.out.println(booklist.getBookName());
        }
        System.out.println("--------------------------------------------------");
        System.out.println("Sayfa sayınıza göre kitaplarınızın sıralanışı : ");
        System.out.println("--------------------------------------------------");
        for (Book booklist : bookList2){
            System.out.println(booklist.getBookName() + "     Sayfa sayısı : " + booklist.getPageNumber());
        }

    }
}