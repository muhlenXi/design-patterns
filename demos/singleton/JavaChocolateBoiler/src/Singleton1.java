public class Singleton1 {
    private static Singleton1 uniqueInstance;

    private Singleton1() {}

    public static synchronized Singleton1 getInstance() {
        if (uniqueInstance == null) {
            uniqueInstance = new Singleton1();
        }
        return uniqueInstance;
    }
}
