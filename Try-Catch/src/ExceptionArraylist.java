public class ExceptionArraylist extends Exception {
    public ExceptionArraylist() {
        super();
    }

    @Override
    public String toString() {
        return "Array boyutun dışına çıktınız";
    }
}
