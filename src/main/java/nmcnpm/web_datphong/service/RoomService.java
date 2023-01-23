package nmcnpm.web_datphong.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nmcnpm.web_datphong.dto.BillDTO;
import nmcnpm.web_datphong.dto.RoomDTO;
import nmcnpm.web_datphong.entity.Category;
import nmcnpm.web_datphong.entity.Room;
import nmcnpm.web_datphong.repository.RoomRepository;
import nmcnpm.web_datphong.utility.RoomConverter;

@Service
public class RoomService {
	@Autowired
	private RoomRepository roomRepository;
	@Autowired
	private RoomConverter roomConverter;

	public RoomDTO getById(int id) {
		Room roomEntity = roomRepository.getById(id);
		RoomDTO roomDTO = roomConverter.toRoomDTO(roomEntity);
		return roomDTO;
	}
	
	public void updateRoomAfterBookingSuccessful(RoomDTO roomDTO, BillDTO billDTO) {
		int roomID = roomDTO.getRoomID();
		Category category = roomDTO.getCategory();
		int capacity = roomDTO.getCapacity();
		String kindOfBed = roomDTO.getKindOfBed();
		int numberOfBed = roomDTO.getNumberOfBed();
		double pricePerNight = roomDTO.getPricePerNight();
		int roomsBooked = billDTO.getNumberOfRooms();
		int quantity = roomDTO.getQuantity() - roomsBooked;
		RoomDTO roomAfterBookingSuccessful = new RoomDTO(roomID, category, capacity, kindOfBed, numberOfBed, pricePerNight, quantity);
		Room entity = roomConverter.toRoomEntity(roomAfterBookingSuccessful);
		roomRepository.save(entity);	
	}
}
