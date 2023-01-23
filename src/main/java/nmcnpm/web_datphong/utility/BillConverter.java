package nmcnpm.web_datphong.utility;

import java.time.LocalDate;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import nmcnpm.web_datphong.dto.BillDTO;
import nmcnpm.web_datphong.dto.RoomDTO;
import nmcnpm.web_datphong.entity.Bill;
import nmcnpm.web_datphong.entity.Room;
import nmcnpm.web_datphong.repository.RoomRepository;
import nmcnpm.web_datphong.service.RoomService;

@Component
public class BillConverter {
	@Autowired
	private RoomConverter roomConverter;
	@Autowired
	private RoomRepository roomRepository;

	public BillDTO toBillDTO(Bill billEntity) {
		 int billCode = billEntity.getBillCode();
		 RoomDTO room = roomConverter.toRoomDTO(billEntity.getRoom());
		 LocalDate checkinDate = billEntity.getCheckinDate();
		 LocalDate checkoutDate = billEntity.getCheckoutDate();
		 int numberOfNights = billEntity.getNumberOfNights();
		 int numberOfRooms = billEntity.getNumberOfRooms();
		 int numberOfGuests = billEntity.getNumberOfGuests();
		 double totalPrice = billEntity.getTotalPrice();
		 String note = billEntity.getNote();
		 String status = billEntity.getStatus();
		 BillDTO billDTO = new BillDTO(billCode, room, checkinDate, checkoutDate, numberOfNights, numberOfRooms, numberOfGuests, totalPrice, note, status);
				 return billDTO;
	}

	public Bill tolBillEntity(BillDTO billDTO) {
		 Room room = roomConverter.toRoomEntity(billDTO.getRoom());
		 LocalDate checkinDate = billDTO.getCheckinDate();
		 LocalDate checkoutDate = billDTO.getCheckoutDate();
		 int numberOfNights = billDTO.getNumberOfNights();
		 int numberOfRooms = billDTO.getNumberOfRooms();
		 int numberOfGuests = billDTO.getNumberOfGuests();
		 double totalPrice = billDTO.getTotalPrice();
		 String note = billDTO.getNote();
		 String status = billDTO.getStatus();
		 Bill bill = new Bill(room, checkinDate, checkoutDate, numberOfNights, numberOfRooms, numberOfGuests, totalPrice, note, status);
				 return bill;
	}

}
