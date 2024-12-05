class BicycleRegistration {
    public static void main(String[] args) {
        Bicycle bike1, bike2; 
        String owner1, owner2, Tag1, Tag2; 

        bike1 = new Bicycle(); 
        bike1.setOwnerName("Adam Smith");
        bike1.setTagNo("2004-134R"); 

        bike2 = new Bicycle();
        bike2.setOwnerName("Ben Jones "); 
        bike2.setTagNo("2005-567R"); 

        owner1 = bike1.getOwnerName(); 
        owner2 = bike2.getOwnerName();

        Tag1 = bike1.getTagNo(); 
        Tag2 = bike2.getTagNo();

        System.out.println(Tag1 + " tag number bicycle 1" + " and the owner is " + owner1);
        System.out.println(Tag2 + " tag number bicycle 2" + " and the owner is " + owner2);
        
    }
}