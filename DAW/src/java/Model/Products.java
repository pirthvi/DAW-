package Model;
// Generated Apr 6, 2019 6:14:55 PM by Hibernate Tools 4.3.1



/**
 * Products generated by hbm2java
 */
public class Products  implements java.io.Serializable {


     private String model;
     private String name;
     private Float price;
     private String brands;
     private String manfImage;
     private String description;
     private String gender;
     private String category;
     private String brandimg;

    public Products() {
    }

	
    public Products(String model, String name) {
        this.model = model;
        this.name = name;
    }
    public Products(String model, String name, Float price, String brands, String manfImage, String description, String gender, String category, String brandimg) {
       this.model = model;
       this.name = name;
       this.price = price;
       this.brands = brands;
       this.manfImage = manfImage;
       this.description = description;
       this.gender = gender;
       this.category = category;
       this.brandimg = brandimg;
    }
   
    public String getModel() {
        return this.model;
    }
    
    public void setModel(String model) {
        this.model = model;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public Float getPrice() {
        return this.price;
    }
    
    public void setPrice(Float price) {
        this.price = price;
    }
    public String getBrands() {
        return this.brands;
    }
    
    public void setBrands(String brands) {
        this.brands = brands;
    }
    public String getManfImage() {
        return this.manfImage;
    }
    
    public void setManfImage(String manfImage) {
        this.manfImage = manfImage;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public String getGender() {
        return this.gender;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getCategory() {
        return this.category;
    }
    
    public void setCategory(String category) {
        this.category = category;
    }
    public String getBrandimg() {
        return this.brandimg;
    }
    
    public void setBrandimg(String brandimg) {
        this.brandimg = brandimg;
    }




}


