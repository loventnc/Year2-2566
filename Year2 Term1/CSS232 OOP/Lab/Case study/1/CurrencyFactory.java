public class CurrencyFactory {
    public static Currency getCurrencyByCountry(String country) throws Exception {
        if (country.equalsIgnoreCase("India")) {
            return new India();
        }
        else if (country.equalsIgnoreCase("USA")) {
            return new USA();
        }
        else {
            throw new Exception("Invalid country");
        }
    }
    public static void main(String[] args) {
        try {
            Currency india = getCurrencyByCountry("India");
            System.out.println("Currency: " + india.getCurrency());
            System.out.println("Symbol: " + india.getSymbol());

            Currency usa = getCurrencyByCountry("USA");
            System.out.println("Currency: " + usa.getCurrency());
            System.out.println("Symbol: " + usa.getSymbol());
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
