package nmcnpm.web_datphong.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import nmcnpm.web_datphong.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {
	Customer findByNameAndEmail(String name, String email);
}
