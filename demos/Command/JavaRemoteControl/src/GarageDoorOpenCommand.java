public class GarageDoorOpenCommand implements Command {
    Garage garage;

    public GarageDoorOpenCommand(Garage garage) {
        this.garage = garage;
    }

    @Override
    public void execute() {
        garage.openDoor();
    }

    @Override
    public void undo() {
        garage.closeDoor();
    }
}

class Garage {
    public void openDoor() {
        System.out.println("Garage Door is Open.");
    }

    public  void closeDoor() {
        System.out.println("Garage Door is Close.");
    }
}
