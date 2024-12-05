class BicycleRegistration {
    public static void main (String[] args) {
        Bicycle bike1, bike2;
        String owner1, owner2, Tag1, Tag2;

        //Create and assign value to bike1
        bike1 = new Bicycle();
        bike1.setOwnerName("Adam Smith");
        bike1.setTagNo("2004-134R");

        //Create and assign value to bike2
        bike2 = new Bicycle();
        bike2.setOwnerName("Ben Jones");
        bike2.setTagNo("2005-134S");

        //Output the information
        owner1 = bike1.getOwnerName();
        owner2 = bike2.getOwnerName();
        Tag1 = bike1.getTagNo();
        Tag2 = bike2.getTagNo();

        System.out.println(owner1 + " owns a bicycle is TagNo: " + Tag1);
        System.out.println(owner2 + " also owns a bicycle is TagNo: " + Tag2);
    }
}
