package nmcnpm.web_datphong.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import nmcnpm.web_datphong.entity.Room;

public interface RoomRepository extends JpaRepository<Room, Integer>{
	List<Room> findByCapacityLessThan(Integer n);
	List<Room> findByCapacityGreaterThan(Integer n);
	Room findByRoomID(Integer n);
}
