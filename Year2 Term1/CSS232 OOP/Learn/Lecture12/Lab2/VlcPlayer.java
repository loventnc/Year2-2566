public class VlcPlayer implements AdvancedMediaPlayer {
    
    @Override
    public void playVlc(String filename) {
        System.out.println("PLaying vlc file. Name: " + filename);
    }
    @Override
    public void playMp4(String filename) {
    }
}