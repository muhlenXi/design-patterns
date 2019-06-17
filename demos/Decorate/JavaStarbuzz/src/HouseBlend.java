/// 家常咖啡
public class HouseBlend extends Beverage {
    public HouseBlend() {
        description = "House Blend Coffee";
    }

    @Override
    public Double cost() {
        Double cost = 0.89;
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
