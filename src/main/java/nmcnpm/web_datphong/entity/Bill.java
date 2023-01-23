package nmcnpm.web_datphong.entity;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Bill {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int billCode;
	@OneToOne 
    @JoinColumn(name = "room_id", nullable = false)
	private Room room;
	private LocalDate checkinDate;
	private LocalDate checkoutDate;
	private int numberOfNights;
	private int numberOfRooms;
	private int numberOfGuests;
	private double totalPrice;
	private String note;
	private String status;
	@OneToOne(mappedBy = "bill", fetch = FetchType.EAGER) 
	private CustomerBill customerBill;
	
	public Bill() {
		
	}
	
	public Bill(Room room, LocalDate checkinDate, LocalDate checkoutDate, int numberOfNights,
			int numberOfRooms, int numberOfGuests, double totalPrice, String note, String status) {
		this.room = room;
		this.checkinDate = checkinDate;
		this.checkoutDate = checkoutDate;
		this.numberOfNights = numberOfNights;
		this.numberOfRooms = numberOfRooms;
		this.numberOfGuests = numberOfGuests;
		this.totalPrice = totalPrice;
		this.note = note;
		this.status = status;
	}
	
	public Bill(int billCode, Room room, LocalDate checkinDate, LocalDate checkoutDate, int numberOfNights,
			int numberOfRooms, int numberOfGuests, double totalPrice, String note, String status) {
		this.billCode = billCode;
		this.room = room;
		this.checkinDate = checkinDate;
		this.checkoutDate = checkoutDate;
		this.numberOfNights = numberOfNights;
		this.numberOfRooms = numberOfRooms;
		this.numberOfGuests = numberOfGuests;
		this.totalPrice = totalPrice;
		this.note = note;
		this.status = status;
	}

	public int getBillCode() {
		return billCode;
	}

	public void setBillCode(int billCode) {
		this.billCode = billCode;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	public LocalDate getCheckinDate() {
		return checkinDate;
	}

	public void setCheckinDate(LocalDate checkinDate) {
		this.checkinDate = checkinDate;
	}

	public LocalDate getCheckoutDate() {
		return checkoutDate;
	}

	public void setCheckoutDate(LocalDate checkoutDate) {
		this.checkoutDate = checkoutDate;
	}

	public int getNumberOfNights() {
		return numberOfNights;
	}

	public void setNumberOfNights(int numberOfNights) {
		this.numberOfNights = numberOfNights;
	}

	public int getNumberOfRooms() {
		return numberOfRooms;
	}

	public void setNumberOfRooms(int numberOfRooms) {
		this.numberOfRooms = numberOfRooms;
	}

	public int getNumberOfGuests() {
		return numberOfGuests;
	}

	public void setNumberOfGuests(int numberOfGuests) {
		this.numberOfGuests = numberOfGuests;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	

}
