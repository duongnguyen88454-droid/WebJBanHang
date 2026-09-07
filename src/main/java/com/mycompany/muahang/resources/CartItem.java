package com.mycompany.muahang.resources;
import java.io.Serializable;

public class CartItem implements Serializable {
    private Product product;
    private int quantity;

    public CartItem() {
        product = new Product();
        quantity = 0;
    }
    
    public CartItem(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public int getQuantity() {
        return quantity;
    }   
    
    public void addQuantity(int amount) {
        quantity += 1;
    }
    
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
}
