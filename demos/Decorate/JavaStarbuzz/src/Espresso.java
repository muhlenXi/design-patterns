/// 浓缩咖啡
public class Espresso extends Beverage{
    public Espresso() {
        description = "Espresso";
    }

    @Override
    public Double cost() {
        Double cost = 1.99;
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
