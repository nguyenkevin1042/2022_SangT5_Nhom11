package nmcnpm.web_datphong.service;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import nmcnpm.web_datphong.dto.CustomerDTO;
import nmcnpm.web_datphong.dto.RoomDTO;
import nmcnpm.web_datphong.entity.Customer;
import nmcnpm.web_datphong.entity.Room;
import nmcnpm.web_datphong.repository.BillRepository;
import nmcnpm.web_datphong.repository.CustomerRepository;
import nmcnpm.web_datphong.repository.RoomRepository;
import nmcnpm.web_datphong.utility.RoomConverter;
import nmcnpm.web_datphong.utility.Validator;

@Service
public class BookingService {
	@Autowired
	private BillRepository billRepository;
	@Autowired
	private RoomRepository roomRepository;
	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private RoomConverter roomConverter;
	@Autowired
	Validator validator = new Validator();

	public List<RoomDTO> searchSuitableRooms(Integer guests) {
		List<RoomDTO> availabilityRoomsDTOList;
		if (guests == 5) {
			availabilityRoomsDTOList = caseGuestsGreaterThan5(guests);
		} else {
			availabilityRoomsDTOList = caseGuestsLessThan5(guests);
		}
		return availabilityRoomsDTOList;
	}

	// CASE 1: number of guest >= 5
	private List<RoomDTO> caseGuestsGreaterThan5(int guests) {
		List<Room> roomEntityList = roomRepository.findByCapacityGreaterThan(guests);
		List<RoomDTO> roomDTOList = new ArrayList<RoomDTO>();
		for (Room roomEntity : roomEntityList) {
			RoomDTO roomDTO = roomConverter.toRoomDTO(roomEntity);
			roomDTOList.add(roomDTO);
		}
		return roomDTOList;
	}

	// CASE 2: number of guest < 5
	private List<RoomDTO> caseGuestsLessThan5(int guests) {
		List<Room> roomEntityList = roomRepository.findByCapacityLessThan(guests+1);
		List<RoomDTO> roomDTOList = new ArrayList<RoomDTO>();
		for (Room roomEntity : roomEntityList) {
			RoomDTO roomDTO = roomConverter.toRoomDTO(roomEntity);
			roomDTOList.add(roomDTO);
		}
		return roomDTOList;
	}
	
	public LocalDate toLocalDate(String stringDate) {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d/MM/yyyy");
		LocalDate result = LocalDate.parse(stringDate, formatter);
		return result;
	}
	
	public long countNumberOfNights(String startDate, String endDate) {
		LocalDate d1 = toLocalDate(startDate);
		LocalDate d2 = toLocalDate(endDate);
		long days = ChronoUnit.DAYS.between(d1, d2);
		return days;
	}

	public double calculateTotalMoney(int numberOfRooms, long numberOfNights, double price) {
		return (price * numberOfNights) * numberOfRooms;
	}
	
	public String totalPriceToString(double value) {
		NumberFormat formatter = new DecimalFormat("0.00");
	    String result = formatter.format(value);
	    return result;
	}
	
	public void setAttributesForCheckBillPage(RedirectAttributes att, CustomerDTO customerDTO, String checkinDate,
			String checkoutDate, String guests, int rooms, long nights, RoomDTO roomDTO, String note,double totalPrice) {
		att.addAttribute("checkin-date", checkinDate);
		att.addAttribute("checkout-date", checkoutDate);
		att.addAttribute("guests", guests);
		att.addAttribute("roomId", roomDTO);
		att.addAttribute("rooms", rooms);
		att.addAttribute("nights", nights);
		att.addAttribute("customerId", customerDTO.getID());
		att.addAttribute("totalPrice", totalPriceToString(totalPrice));
		att.addAttribute("note", note);
	}
}
