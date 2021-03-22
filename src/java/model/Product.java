
package model;


public class Product {
    private int pId;
    private String prodName;
    private double unitPrice;

    public Product(int pId, String prodName, double unitPrice) {
        this.pId = pId;
        this.prodName = prodName;
        this.unitPrice = unitPrice;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getProdName() {
        return prodName;
    }

    public void setProdName(String prodName) {
        this.prodName = prodName;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }
    
    
}
