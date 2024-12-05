class Animal {
    private String name;
    private int age;

    public Animal(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public void eat() {
        System.out.println(this.name + " is eating.");
    }

    public void sleep() {
        System.out.println(this.name + " is sleeping.");
    }

    public void makeSound(String sound) {
        System.out.println(this.name + " : " + sound);
    }

    public String getName() {
        return this.name;
    }

    public int getAge() {
        return this.age;
    }
}

class Fish extends Animal {
    public Fish(String name, int age) {
        super(name, age);
    }

    public void swim() {
        System.out.println(getName() + " is swimming.");
    }
}

class Bird extends Animal {
    public Bird(String name, int age) {
        super(name, age);
    }

    public void fly() {
        System.out.println(getName() + " is flying.");
    }
}

class Mammal extends Animal {
    public Mammal(String name, int age) {
        super(name, age);
    }

    public void breastFeed() {
        System.out.println(getName() + " is milking.");
    }
}



class ExerciseCircus {
    public static void main(String[] args) {
        Animal a;
        a = new Animal("name animal", 3);
        a.eat();
        a.makeSound("Siang");

        Fish fish;
        fish = new Fish("Plathong", 2);
        fish.swim();
        fish.makeSound("Bu Bu");

        Bird eagle;
        eagle = new Bird("Eka", 3);
        eagle.fly();
        System.out.println(eagle.getName() + " is " + eagle.getAge() + " years old.");
        
        Mammal cow;
        cow = new Mammal("Cowwy", 1);
        cow.breastFeed();
        cow.makeSound("moo moo");
    }
}