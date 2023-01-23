package nmcnpm.web_datphong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nmcnpm.web_datphong.dto.CustomerDTO;
import nmcnpm.web_datphong.entity.Customer;
import nmcnpm.web_datphong.repository.CustomerRepository;
import nmcnpm.web_datphong.utility.CustomerConverter;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private CustomerConverter customerConverter;

	public CustomerDTO getById(int id) {
		Customer customerEntity = customerRepository.getById(id);
		CustomerDTO customerDTO = customerConverter.toCustomerDTO(customerEntity);
		return customerDTO;
	}
	
	public int saveThenGetNewestCustomerId(CustomerDTO customer) {
		CustomerDTO customerDTO = findByNameAndEmail(customer.getName(),customer.getEmail());
		int id = 0;
		if(customerDTO == null) {
			saveNewCustomer(customerDTO);
			customerRepository.flush();
			id = customer.getID();
		} else {
			id = customer.getID();
		}
	
		return id;
	}
	
	public void saveNewCustomer(CustomerDTO customer) {
		CustomerDTO customerDTO = new CustomerDTO(customer.getName(), customer.getEmail(), customer.getPhone());
		Customer customerEntity = customerConverter.toCustomerEntity(customerDTO);
		customerRepository.save(customerEntity);
	}
	
	public CustomerDTO findByNameAndEmail(String name, String email) {
		Customer customerEntity = customerRepository.findByNameAndEmail(name,email);
		CustomerDTO customerDTO = customerConverter.toCustomerDTO(customerEntity);
		return customerDTO;
	}
	
	

}
