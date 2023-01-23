package nmcnpm.web_datphong.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nmcnpm.web_datphong.dto.BillDTO;
import nmcnpm.web_datphong.dto.CustomerBillDTO;
import nmcnpm.web_datphong.dto.CustomerDTO;
import nmcnpm.web_datphong.entity.CustomerBill;
import nmcnpm.web_datphong.repository.CustomerBillRepository;
import nmcnpm.web_datphong.utility.CustomerBillConverter;


@Service
public class CustomerBillService {
	@Autowired
	private CustomerBillRepository customerBillRepository;
	@Autowired
	private CustomerBillConverter customerBillConverter;

	public void saveNewCustomerBill(CustomerDTO customer,BillDTO bill) {
		CustomerBillDTO dto = new CustomerBillDTO(customer, bill);
		CustomerBill entity = customerBillConverter.toCustomerBillEntity(dto);
		customerBillRepository.save(entity);
	}

}
