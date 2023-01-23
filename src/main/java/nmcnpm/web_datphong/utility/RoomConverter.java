package nmcnpm.web_datphong.utility;

import org.springframework.stereotype.Component;

import nmcnpm.web_datphong.dto.RoomDTO;
import nmcnpm.web_datphong.entity.Category;
import nmcnpm.web_datphong.entity.Room;

@Component
public class RoomConverter {

	public RoomDTO toRoomDTO(Room roomEntity) {
		int roomID = roomEntity.getRoomID();
		Category category = roomEntity.getCategory();
		int capacity = roomEntity.getCapacity();
		String kindOfBed = roomEntity.getKindOfBed();
		int numberOfBed = roomEntity.getNumberOfBed();
		double pricePerNight = roomEntity.getPricePerNight();
		int quantity = roomEntity.getQuantity();
		RoomDTO roomDTO = new RoomDTO(roomID, category, capacity, kindOfBed, numberOfBed, pricePerNight, quantity);
		return roomDTO;
	}

	public Room toRoomEntity(RoomDTO roomDTO) {
		int roomID = roomDTO.getRoomID();
		Category category = roomDTO.getCategory();
		int capacity = roomDTO.getCapacity();
		String kindOfBed = roomDTO.getKindOfBed();
		int numberOfBed = roomDTO.getNumberOfBed();
		double pricePerNight = roomDTO.getPricePerNight();
		int quantity = roomDTO.getQuantity();
		Room roomEntity = new Room(roomID, category, capacity, kindOfBed, numberOfBed, pricePerNight, quantity);
		return roomEntity;
	}
}
