package com.store;

public class Product {
	   private int pID;
	   private String pName;
	   private float regPrice;
	   private float unitPrice;
	   private String pSize;
	   private String pCat;
	   private String pDesc;
	   
	   public int getpID() {
	      return pID;
	   }
	   
	   public void setpID(int id) {
	      this.pID = id;
	   }
	   
	   public String getpName() {
	      return pName;
	   }
	   
	   public void setpName(String name) {
	      this.pName = name;
	   }
	   
	   public String getpCat() {
		      return pCat;
	   }
		   
	   public void setpCat(String cat) {
		      this.pCat = cat;
	   }
	   public String getpDesc() {
			  return pDesc;
		}
			   
		public void setpDesc(String desc) {
			   this.pDesc = desc;
	   }
	   public float getregPrice() {
		      return regPrice;
	   }
		   
	   public void setregPrice(float rprice) {
		      this.regPrice = rprice;
	   }
		   
	   public float getunitPrice() {
		   return unitPrice;
	   }
		   
	   public void setunitPrice(float uprice) {
		      this.unitPrice = uprice;
	   }
	   
	   public String getpsize() {
		   return pSize;
	   }
		   
	   public void setpsize(String size) {
		      this.pSize = size;
	   }
}

