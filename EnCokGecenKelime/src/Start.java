import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Start {
    public static void start(){
        Scanner scanner = new Scanner(System.in);
        System.out.print("Metni girin: ");
        String metin = scanner.nextLine();

        // Kelimeleri ayırmak için split kullan
        String[] kelimeler = metin.split("\\s+");

        // Kelimeleri saymak için HashMap kullan
        Map<String, Integer> kelimeSayilari = new HashMap<>();

        for (String kelime : kelimeler) {
            // Küçük-büyük harf duyarlılığını ortadan kaldırmak için küçük harfe çevir
            kelime = kelime.toLowerCase();

            // HashMap'te kelimenin sayısını güncelle
            kelimeSayilari.put(kelime, kelimeSayilari.getOrDefault(kelime, 0) + 1);
        }

        // En çok geçen kelimeyi bul
        String enCokGecenKelime = "";
        int enCokGecenKelimeSayisi = 0;

        for (Map.Entry<String, Integer> entry : kelimeSayilari.entrySet()) {
            if (entry.getValue() > enCokGecenKelimeSayisi) {
                enCokGecenKelime = entry.getKey();
                enCokGecenKelimeSayisi = entry.getValue();
            }
        }

        // Sonucu ekrana yazdır
        System.out.println("En çok geçen kelime: " + enCokGecenKelime + " (" + enCokGecenKelimeSayisi + " kez)");
    }
}

