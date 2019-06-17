/// 深培咖啡
public class DarkRoast extends Beverage {
    public DarkRoast() {
        description = "Dark Roast Coffee";
    }

    @Override
    public Double cost() {
        Double cost = 0.99;
        switch (size) {
            case tall:
                cost += 0.10;
                break;
            case grande:
                cost += 0.15;
                break;
            case venti:
                cost += 0.20;
                break;
        }
        return cost;
    }
}
