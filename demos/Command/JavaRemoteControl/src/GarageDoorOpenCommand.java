public class GarageDoorOpenCommand implements Command {
    Garage garage;

    public GarageDoorOpenCommand(Garage garage) {
        this.garage = garage;
    }

    @Override
    public void execute() {
        garage.openDoor();
    }
}

class Garage {
    public void openDoor() {
        System.out.println("Garage Door is Open.");
    }
}
