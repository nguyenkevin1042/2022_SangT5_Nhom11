package nmcnpm.web_datphong.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nmcnpm.web_datphong.dto.BillDTO;
import nmcnpm.web_datphong.entity.Bill;
import nmcnpm.web_datphong.repository.BillRepository;
import nmcnpm.web_datphong.utility.BillConverter;

@Service
public class BillService {
	@Autowired
	private BillRepository billRepository;
	@Autowired
	private BillConverter billConverter;

	public void saveNewBill(BillDTO billDTO) {
		Bill billEntity =billConverter.tolBillEntity(billDTO);
		billRepository.save(billEntity);
	}
	
	public BillDTO findByBillCode(int billCode) {
		Bill entity = billRepository.findByBillCode(billCode);
		BillDTO dto = billConverter.toBillDTO(entity);
		return dto;
	}
	

}
