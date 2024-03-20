public class StaticValueOF {
    public static void main(String[] args) {
        boolean b = true;
        char[] letters = { 'a', 'b', 'c', 'd', 'e' };
        double d = 2.4981567;
        int i = 7;

        System.out.println(String.valueOf(b));
        System.out.println(String.valueOf(letters));
        System.out.println(String.valueOf(d));
        System.out.println(String.valueOf(i));

        StringBuilder city = new StringBuilder("Charleston city");
        System.out.println(city);
    }

}
