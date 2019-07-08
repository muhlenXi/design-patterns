public class ChocolateBoiler {
    private boolean empty;
    private boolean boiled;

    public ChocolateBoiler() {
        empty = true;
        boiled = false;
    }

    public void fill() {
        if (isEmpty()) {
            empty = false;
            boiled = false;
            // 在锅炉中填满巧克力和牛奶的混合物
        }
    }

    public void drain() {
        if (!isEmpty() && isBoiled()) {
            empty = true;
            // 排除煮沸的巧克力和牛奶
        }
    }

    public void boil() {
        if (!isEmpty() && !isBoiled()) {
            boiled = true;
            // 将炉内物煮沸
        }
    }

    public boolean isEmpty() {
        return empty;
    }

    public boolean isBoiled() {
        return boiled;
    }
}
