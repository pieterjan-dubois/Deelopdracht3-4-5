package domain.model;

public class Product {

    private String naam;
    private double hoeveelheidKilo;
    private double prijsAanbieding;

    public Product(String naam, double hoeveelheidKilo, double prijsAanbieding) {
        this.setNaam(naam);
        this.setHoeveelheidKilo(hoeveelheidKilo);
        this.setPrijsAanbieding(prijsAanbieding);
    }

    public Product(String naam) {
        this.setNaam(naam);
    }

    public boolean equals (Object o) {
        if (o instanceof Product) {
            return this.getNaam().equals(((Product)o).getNaam());
        }
        return false;
    }

    public static boolean isValidString(String input) {
        return (input != null) && !(input.trim().isEmpty());
    }
    public String getNaam() {
        return naam;
    }

    public double getHoeveelheidKilo() {
        return hoeveelheidKilo;
    }

    public double getPrijsAanbieding() {
        return prijsAanbieding;
    }

    public void setNaam(String naam) {
        if (isValidString(naam))
            this.naam = naam;
        else throw new IllegalArgumentException("No valid name");
    }


    public void setHoeveelheidKilo(double hoeveelheidKilo) {
        if(hoeveelheidKilo <= 0){
            throw new IllegalArgumentException("Hoeveelheid moet groter zijn dan nul.");
        }else{
            this.hoeveelheidKilo = hoeveelheidKilo;
        }
    }

    public void setPrijsAanbieding(double prijsAanbieding) {
        if(prijsAanbieding <= 0){
            throw new IllegalArgumentException("Prijsaanbieding moet groter zijn dan nul.");
        }else{
            this.prijsAanbieding = prijsAanbieding;
        }
}
    public boolean heeftNaam(String naam) {
        return naam.equals(this.getNaam());
    }
    }
