package com.mycompany.muahang.resources;
import java.io.Serializable;

public class Product implements Serializable{
    String code;
    String description;
    float price;
    
    public Product() {}
    public Product(String code,String description ,float price) {
        this.code = code;
        this.description = description;
        this.price = price;
    }
    
    public String getDescription() {
        return description;
    }
    
    public float getPrice(){
        return price;
    }   
    
    public String getCode() {
        return code;
    }
    
}
