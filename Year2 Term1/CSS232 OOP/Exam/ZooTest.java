// Test
public class ZooTest {
    public static void main(String[] args) {
        Mammal lion = new Mammal("Leo", 5);
        Bird parrot = new Bird("Polly", 2);
        Fish goldfish = new Fish("Goldie", 1);

        System.out.println(lion.makeSound()); // Leo growls.
        System.out.println(parrot.makeSound()); // Polly chirps.
        System.out.println(goldfish.makeSound()); // Goldie bubbles.
    }
}
