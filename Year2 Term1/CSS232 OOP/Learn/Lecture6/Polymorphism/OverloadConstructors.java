class Room {
    double lenght, breadth, height;

    Room(){
        lenght = -1;
        breadth = -1;
        height = -1;
    }
    Room(double l, double b, double h) {
        lenght = l;
        breadth = b;
        height = h;
    }
    Room(double len) {
        lenght = breadth = height = len;
    }
    double volume() {
        return lenght*breadth*height;
    }
}

class OverloadConstructors {
    public static void main(String[] args) {
        Room a = new Room(20,30,40);
        Room b = new Room();
        Room c = new Room(10);
        double vol;
        vol = a.volume();
        System.out.println("Volume of room a is " + vol );
        vol = b.volume();
        System.out.println("Volume of room b is " + vol);
        vol = c.volume();
        System.out.println("Volume of room c is " + vol);
    }
}