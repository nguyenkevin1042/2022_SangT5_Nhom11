package nmcnpm.web_datphong.dto;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import nmcnpm.web_datphong.entity.Category;

public class RoomDTO {
	private int roomID;
	private Category category;
	private int capacity;
	private String kindOfBed;
	private int numberOfBed;
	private double pricePerNight;
	private int quantity;
	
	public RoomDTO(int roomID, Category category, int capacity, String kindOfBed, int numberOfBed, double pricePerNight,
			int quantity) {
		this.roomID = roomID;
		this.category = category;
		this.capacity = capacity;
		this.kindOfBed = kindOfBed;
		this.numberOfBed = numberOfBed;
		this.pricePerNight = pricePerNight;
		this.quantity = quantity;
	}

	public int getRoomID() {
		return roomID;
	}

	public void setRoomID(int roomID) {
		this.roomID = roomID;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public String getKindOfBed() {
		return kindOfBed;
	}

	public void setKindOfBed(String kindOfBed) {
		this.kindOfBed = kindOfBed;
	}

	public int getNumberOfBed() {
		return numberOfBed;
	}

	public void setNumberOfBed(int numberOfBed) {
		this.numberOfBed = numberOfBed;
	}

	public double getPricePerNight() {
		return pricePerNight;
	}

	public void setPricePerNight(double pricePerNight) {
		this.pricePerNight = pricePerNight;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	// convert category name to lowercase
		public String lowercaseCategoryName(String name) {
			return name.toLowerCase();
		}
}
