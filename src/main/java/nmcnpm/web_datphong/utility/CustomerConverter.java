package nmcnpm.web_datphong.utility;

import org.springframework.stereotype.Component;

import nmcnpm.web_datphong.dto.CustomerDTO;
import nmcnpm.web_datphong.entity.Customer;

@Component
public class CustomerConverter {

	public CustomerDTO toCustomerDTO(Customer customerEntity) {
		int ID = customerEntity.getID();
		String name = customerEntity.getName();
		String email = customerEntity.getEmail();
		String phone = customerEntity.getPhone();
		CustomerDTO customerDTO = new CustomerDTO(ID, name, email, phone);
		return customerDTO;
	}

	public Customer toCustomerEntity(CustomerDTO customerDTO) {
		String name = customerDTO.getName();
		String email = customerDTO.getEmail();
		String phone = customerDTO.getPhone();
		Customer customer = new Customer(name, email, phone);
		return customer;
	}

}
