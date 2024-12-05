public class Flight {
    private String start;
    private String destination;
    private String seatClass;
    private double baseFare;
    private double amenitiesCost;

    public Flight(String start, String destination, String seatClass) {
        this.start = start;
        this.destination = destination;
        this.seatClass = seatClass;
        this.amenitiesCost = 0;

        if (this.seatClass == "Economy") {
            this.baseFare = 2500;
        } else if (this.seatClass == "Premium Economy") {
            this.baseFare = 3500;
        } else if (this.seatClass == "Business") {
            this.baseFare = 4500;
        } else if (this.seatClass == "First") {
            this.baseFare = 5500;
        }
    }

    public void addAmenities(boolean wifi, boolean liveTV, boolean wine) {
        if (wifi) {
            amenitiesCost += 10;
        }
        if (liveTV) {
            amenitiesCost += 50;
        }
        if (wine) {
            amenitiesCost += 30;
        }
    }

    public void displayFlight() {
        System.out.println("Flight: " + this.start + " to " + this.destination);
    }

    public void displayTotalCost() {
        double totalCost = baseFare + amenitiesCost;
        System.out.println("Total Cost: $" + totalCost);
    }
}

