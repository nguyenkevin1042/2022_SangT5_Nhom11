package nmcnpm.web_datphong.dto;

import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;



public class CustomerBillDTO {
	private int customerBill_ID;
	private CustomerDTO customer;
	private BillDTO billDTO;
	
	public CustomerBillDTO(int customerBill_ID, CustomerDTO customer, BillDTO bill) {
		this.customerBill_ID = customerBill_ID;
		this.customer = customer;
		this.billDTO = bill;
	}
	
	public CustomerBillDTO(CustomerDTO customer, BillDTO bill) {
		this.customer = customer;
		this.billDTO = bill;
	}

	public int getCustomerBill_ID() {
		return customerBill_ID;
	}

	public void setCustomerBill_ID(int customerBill_ID) {
		this.customerBill_ID = customerBill_ID;
	}

	public CustomerDTO getCustomer() {
		return customer;
	}

	public void setCustomer(CustomerDTO customer) {
		this.customer = customer;
	}

	public BillDTO getBill() {
		return billDTO;
	}

	public void setBill(BillDTO bill) {
		this.billDTO = bill;
	}
	

}
