package com.company;

public class Amplifier {
    public void on() {
        System.out.println("Top-O-Line Amplifier on");
    }
    public void off() {
        System.out.println("Top-O-Line Amplifier off");
    }

    public void setDvd(DvdPlayer dvdPlayer) {
        System.out.println("Top-O-Line Amplifier setting DVD player to Top-O-Line DVD player");
    }

    public void setSurroundSound() {
        System.out.println("Top-O-Line Amplifier surround sound on (5 speakers, 1 subwoofer)");
    }

    public void setVolume(int volume) {
        System.out.println("Top-O-Line Amplifier setting volume to " + volume);
    }
}
