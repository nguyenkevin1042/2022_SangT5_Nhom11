package nmcnpm.web_datphong.utility;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import nmcnpm.web_datphong.dto.BillDTO;
import nmcnpm.web_datphong.dto.CustomerBillDTO;
import nmcnpm.web_datphong.dto.CustomerDTO;
import nmcnpm.web_datphong.entity.Bill;
import nmcnpm.web_datphong.entity.Customer;
import nmcnpm.web_datphong.entity.CustomerBill;

@Component
public class CustomerBillConverter {
	@Autowired
	private CustomerConverter customerConverter;
	@Autowired
	private BillConverter billConverter;
	
	public CustomerBillDTO toCustomerBillDTO(CustomerBill entity) {
		int customerBill_ID = entity.getCustomerBill_ID();
		CustomerDTO customer=customerConverter.toCustomerDTO(entity.getCustomer());
		BillDTO bill=billConverter.toBillDTO(entity.getBill());
		CustomerBillDTO customerBill =  new CustomerBillDTO(customerBill_ID, customer, bill);
		return customerBill;
	}
	
	public CustomerBill toCustomerBillEntity(CustomerBillDTO dto) {
		int customerBill_ID = dto.getCustomerBill_ID();
		Customer customer=customerConverter.toCustomerEntity(dto.getCustomer());
		Bill bill=billConverter.tolBillEntity(dto.getBill());
		CustomerBill customerBill =  new CustomerBill(customerBill_ID, customer, bill);
		return customerBill;
	}

}
