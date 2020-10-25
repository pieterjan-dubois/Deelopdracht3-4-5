package domain.db;

import domain.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductDB {

    private ArrayList<Product> producten = new ArrayList<Product>();

    public ProductDB() {
        Product p1 = new Product("kip", 12.00, 50.00);
        Product p2 = new Product("paprika", 0.5, 1.00);
        Product p3 = new Product("rund", 1, 15);
        Product p4 = new Product("bananen", 2.5, 5.5);
        voegToe(p1);
        voegToe(p2);
        voegToe(p3);
        voegToe(p4);
    }



    public void voegToe(Product product){
        if(product == null)
            throw new IllegalArgumentException("Geen geldige student");
            this.producten.add(product);
    }

    public Product vindProduct(String naam){
        for(Product product: producten){
            if(product.heeftNaam(naam)){
                return product;
            }
        }
        return null;
    }

    public ArrayList<Product> getProducten(){
        return producten;
    }

    public int berekenTotaalProducten(){
        int count = 0;
        for(Product p: this.producten){
            count++;
        }
        return count;
    }
    public double totaalGewicht(){
        int total= 0;
        for(Product p : this.producten){
            total += p.getHoeveelheidKilo();
        }
        return total;
    }

    public double totaalPrijs(){
        int total= 0;
        for(Product p: this.producten){
            total += p.getPrijsAanbieding();
        }
        return total;
    }

    public void verwijder (String naam) {
       producten.remove(new Product(naam));
    }

    public void verwijderr(String naam){
        for(Product p:this.producten){
            if(p.getNaam().equals(naam)){
                producten.remove(p);
            }
        }
    }
}
