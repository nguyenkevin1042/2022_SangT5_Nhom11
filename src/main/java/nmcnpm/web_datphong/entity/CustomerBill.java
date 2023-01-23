package nmcnpm.web_datphong.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class CustomerBill {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int customerBill_ID;
	@OneToOne(fetch = FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name = "customer_id", nullable = false)
	private Customer customer;
	@OneToOne(fetch = FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name = "bill_code", nullable = false)
	private Bill bill;
	
	public CustomerBill() {
		
	}
			
	public CustomerBill(int customerBill_ID, Customer customer, Bill bill) {
		this.customerBill_ID = customerBill_ID;
		this.customer = customer;
		this.bill = bill;
	}
	
	public CustomerBill(Customer customer, Bill bill) {
		this.customer = customer;
		this.bill = bill;
	}

	public int getCustomerBill_ID() {
		return customerBill_ID;
	}

	public void setCustomerBill_ID(int customerBill_ID) {
		this.customerBill_ID = customerBill_ID;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Bill getBill() {
		return bill;
	}

	public void setBill(Bill bill) {
		this.bill = bill;
	}

	
}
