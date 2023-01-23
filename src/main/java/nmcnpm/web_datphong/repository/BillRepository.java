package nmcnpm.web_datphong.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import nmcnpm.web_datphong.entity.Bill;

public interface BillRepository extends JpaRepository<Bill, Integer> {
	Bill findByBillCode(Integer billCode);
}
