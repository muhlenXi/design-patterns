public class StereoOnWithCDCommand implements Command {
    Stereo stereo;

    public StereoOnWithCDCommand(Stereo stereo) {
        this.stereo = stereo;
    }

    @Override
    public void execute() {
        stereo.on();
        stereo.setCD();
        stereo.setVolume(11);
    }
}

class Stereo {
    public void on() {
        System.out.println("stereo is on.");
    }

    public void off() {
        System.out.println("stereo is off.");
    }

    public void setCD() {
        System.out.println("stereo is set for CD input.");
    }

    public void setVolume(int volume) {
        System.out.println("volume is set to " + volume);
    }
}
