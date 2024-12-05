import java.util.Scanner;

public class FlightBookingSystem {
    public static void main(String[] args) {
        Flight delhiToToronto = new Flight("Delhi", "Toronto", "Economy");

        Scanner scanner = new Scanner(System.in);
        System.out.println("Select amenities:");
        System.out.print("WiFi (y/n): ");
        boolean wifi = scanner.next().equalsIgnoreCase("y");
        System.out.print("Live TV (y/n): ");
        boolean liveTV = scanner.next().equalsIgnoreCase("y");
        System.out.print("Wine (y/n): ");
        boolean wine = scanner.next().equalsIgnoreCase("y");
        scanner.close();

        delhiToToronto.addAmenities(wifi, liveTV, wine);

        delhiToToronto.displayFlight();
        delhiToToronto.displayTotalCost();      
    }
}

