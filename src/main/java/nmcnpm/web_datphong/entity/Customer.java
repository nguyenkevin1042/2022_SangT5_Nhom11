package nmcnpm.web_datphong.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ID;
	private String name;
	private String email;
	private String phone;
	@OneToMany(mappedBy = "customer")
	private List<CustomerBill> customerBill;
	
	public Customer() {
		
	}
	
	public Customer(int iD, String name, String email, String phone) {
		ID = iD;
		this.name = name;
		this.email = email;
		this.phone = phone;
	}
	
	public Customer(String name, String email, String phone) {
		this.name = name;
		this.email = email;
		this.phone = phone;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
