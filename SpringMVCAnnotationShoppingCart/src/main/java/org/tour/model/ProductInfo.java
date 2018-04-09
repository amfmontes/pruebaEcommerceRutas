package org.tour.model;
 
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.tour.entity.Product;
 
public class ProductInfo {
    private String code;
    private String name;
    private double price;
    private String descripcion;
    private String fechaInicio;
    private String fechaFinal;
    
    SimpleDateFormat formato= new SimpleDateFormat("dd/MM/yyyy");
	
    		 
		 private boolean newProduct=false;
 
    // Upload file.
    private CommonsMultipartFile fileData;
 
    public ProductInfo() {
    }
 
    public ProductInfo(Product product) {
        this.code = product.getCode();
        this.name = product.getName();
        this.price = product.getPrice();
        this.descripcion = product.getDescripcion();
        this.fechaInicio = product.getFechaInicio();
        this.fechaFinal = product.getFechaFinal();
    }
 

    public ProductInfo(String code, String name, double price, String descripcion, String fechaInicio, String fechaFinal) {
        this.code = code;
        this.name = name;
        this.price = price;
        this.descripcion= descripcion;
        this.fechaInicio = fechaInicio;
        this.fechaFinal = fechaFinal;
    }
 
    public String getCode() {
        return code;
    }
 
    public void setCode(String code) {
        this.code = code;
    }
 
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
 
    public double getPrice() {
        return price;
    }
 
    public void setPrice(double price) {
        this.price = price;
    }
 
    public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getFechaInicio() {
		return fechaInicio;
	}

	public void setFechaInicio(String fechaInicio) {
		this.fechaInicio = fechaInicio;
	}

	public String getFechaFinal() {
		return fechaFinal;
	}

	public void setFechaFinal(String fechaFinal) {
		this.fechaFinal = fechaFinal;
	}

	public CommonsMultipartFile getFileData() {
        return fileData;
    }
 
    public void setFileData(CommonsMultipartFile fileData) {
        this.fileData = fileData;
    }
 
    public boolean isNewProduct() {
        return newProduct;
    }
 
    public void setNewProduct(boolean newProduct) {
        this.newProduct = newProduct;
    }
 
}