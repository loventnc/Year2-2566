//Create class name Bicycle the same as this filename
class Bicycle {
    //Data Member, private attribute inside class
    private String ownerName, tagNo;
    
    //Constructor: Initializes the data member
    public Bicycle () {
        ownerName = "Unknown";
        tagNo = "Unknown";
    }

    //Return the name of the bicycle's owner
    public String getOwnerName() {
        return ownerName;
    }

    //Assign the name of the bicycle's owner
    public void setOwnerName(String name) {
        ownerName = name;
    }

    //Return the tag number of the bicycle
    public String getTagNo() {
        return tagNo;
    }

    //Assign the tag number of the bicycle
    public void setTagNo(String tag) {
        tagNo = tag;
    }
}