// Base class: Animal
public abstract class Animal {
    protected String name;
    protected int age;
    
    public Animal(String name, int age) {
    this.name = name;
    this.age = age;
    }
        public String eat() {
        return name + " is eatng.";
    }
    public abstract String makeSound();
}

// Derived class: Mammal
public class Mammal extends Animal {
    public Mammal(String name, int age) {
        super(name, age);
    }
 
    public String makeSound() {
        return name + " growls.";
    }
}

// Derived class: Bird
public class Bird extends Animal {
    public Bird(String name, int age) {
        super(name, age);
    }
 
    public String makeSound() {
        return name + " chirps.";
    }
}
// Derived class: Fish
public class Fish extends Animal {
    public Fish(String name, int age) {
        super(name, age);
 }
    public String swim() {
        return name + " swims.";
    }

    public String makeSound() {
        return name + " bubbles.";
    }
}

// Base class: Animal
public abstract class Animal {
    protected String name;
    protected int age;
    
    public Animal(String name, int age) {
    this.name = name;
    this.age = age;
    }
        public String eat() {
        return name + " is eatng.";
    }
    public abstract String makeSound();
}

// Derived class: Mammal
public class Mammal extends Animal {
    public Mammal(String name, int age) {
        super(name, age);
    }
 
    public String makeSound() {
        return name + " growls.";
    }
}

// Derived class: Bird
public class Bird extends Animal {
    public Bird(String name, int age) {
        super(name, age);
    }
 
    public String makeSound() {
        return name + " chirps.";
    }
}
// Derived class: Fish
public class Fish extends Animal {
    public Fish(String name, int age) {
        super(name, age);
 }
    public String swim() {
        return name + " swims.";
    }

    public String makeSound() {
        return name + " bubbles.";
    }
}