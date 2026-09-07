package com.mycompany.muahang.resources;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Cart  implements Serializable {
    private List<CartItem> items;
    
    public Cart() {
        items = new ArrayList<>();
    }
    public Cart(List<CartItem> items) {
        this.items = items;
    }
    
    public void addItem(Product new_item) { 
        for (int i = 0; i <items.size() ; i++) {
            CartItem item = items.get(i);
            if(item.getProduct().getCode() == new_item.getCode()) {
                item.addQuantity(1);
                return;
            }
        }
        items.add(new CartItem(new_item ,1));
    }
    public void updateItem(String code, int quantity) {
        for (CartItem item : items) {
            if (item.getProduct().getCode().equals(code)) {
                item.setQuantity(quantity);
                return;
            }
        }
    }

    public void removeItem(String code) {
        for (int i = 0; i < items.size(); i++) {
            if (items.get(i).getProduct().getCode().equals(code)) {
                items.remove(i);
                return;
            }
        }
    }

    public double getTotal() {
        double total = 0;

        for (CartItem item : items) {
            total += item.getProduct().getPrice() * item.getQuantity();
        }

        return total;
    }
    
    public List<CartItem> getItems() {
        return items;
    }
    
}
