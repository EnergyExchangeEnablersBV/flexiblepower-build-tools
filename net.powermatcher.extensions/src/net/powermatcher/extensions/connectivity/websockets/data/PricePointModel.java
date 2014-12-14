package net.powermatcher.extensions.connectivity.websockets.data;

public class PricePointModel {
    /**
     * Define the price (double) field.
     */
    private double price;
    /**
     * Define the demand (double) field.
     */
    private double demand;
    
	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
    
	public double getDemand() {
		return demand;
	}
	
	public void setDemand(double demand) {
		this.demand = demand;
	}
}