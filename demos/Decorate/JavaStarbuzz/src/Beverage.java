/// 饮料抽象类
public abstract class Beverage {
    String description = "Unknow Beverage";
    BeverageSize size = BeverageSize.tall;

    public String getDescription() {
        return description;
    }

    public abstract Double cost();

    public void setSize(BeverageSize size) {
        this.size = size;
    }

    public BeverageSize getSize() {
        return size;
    }
}

/// 杯子类型
enum BeverageSize {
    tall, grande, venti
}
