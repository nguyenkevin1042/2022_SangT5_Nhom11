package nmcnpm.web_datphong.controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import org.hibernate.annotations.OnDelete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import nmcnpm.web_datphong.dto.BillDTO;
import nmcnpm.web_datphong.dto.CustomerBillDTO;
import nmcnpm.web_datphong.dto.CustomerDTO;
import nmcnpm.web_datphong.dto.RoomDTO;
import nmcnpm.web_datphong.service.BillService;
import nmcnpm.web_datphong.service.BookingService;
import nmcnpm.web_datphong.service.CustomerBillService;
import nmcnpm.web_datphong.service.CustomerService;
import nmcnpm.web_datphong.service.RoomService;
import nmcnpm.web_datphong.utility.Validator;

@Controller
public class BookingController {
	@Autowired
	private BookingService bookingService;
	@Autowired
	private RoomService roomService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private BillService billService;
	@Autowired
	private CustomerBillService customerBillService;
	@Autowired
	private Validator validator;

	// 2. At Home page, customer select checkin-date, checkout-date and number of
	// guests
	// 3. customer select check availability
	// 4. system search rooms, then redirect to Availability Rooms page.
	// REQUIREMENT VALUE: guests
	@RequestMapping(value = "/availability-rooms", method = RequestMethod.GET)
	public ModelAndView searchSuitableRooms(@RequestParam("guests") Integer guests) {
		List<RoomDTO> availabilityRoomsDTOList = bookingService.searchSuitableRooms(guests);
		ModelAndView mav = new ModelAndView("web/availability-rooms");
		mav.addObject("rooms", availabilityRoomsDTOList);
		return mav;
	}

	// 5. customer select number of room
	// 6. customer select book this room
	// 7. system redirect to booking form
	@RequestMapping(value = "/your-information")
	public ModelAndView bookingForm(@RequestParam("checkin-date") String checkinDate,
			@RequestParam("checkout-date") String checkoutDate, @RequestParam("guests") String guests,
			@RequestParam("rooms") int rooms, @RequestParam("roomId") Integer roomId, Map<String, Object> model) {
		ModelAndView mav = new ModelAndView("web/customer-form");
		CustomerDTO customerDTO = new CustomerDTO();
		model.put("customer", customerDTO);
		RoomDTO room = roomService.getById(roomId);
		mav.addObject("room", room);
		long nights = bookingService.countNumberOfNights(checkinDate, checkoutDate);
		double price = room.getPricePerNight();
		double total = bookingService.calculateTotalMoney(rooms, nights, price);
		mav.addObject("nights", nights);
		mav.addObject("totalPrice", bookingService.totalPriceToString(total));
		return mav;
	}

	// 8. customer inputs informations
	// 9. customer select continue
	// 10. system saves customer and redirects to bill confirmation page
	@RequestMapping("/confirm-bill")
	public ModelAndView confirmBill(RedirectAttributes att, Map<String, Object> model,
			@RequestParam("roomId") Integer roomId, @ModelAttribute("customer") CustomerDTO customerFromForm) {
		ModelAndView mav = new ModelAndView("web/confirm-bill");
		BillDTO billDTO = new BillDTO();
		model.put("bill", billDTO);
		RoomDTO roomDTO = roomService.getById(roomId);
		mav.addObject("room", roomDTO);
		mav.addObject("customer", customerFromForm);
		return mav;
	}

	// 11. customer selects reserve now
	// 12. system saves bill to DB
	// 13. system redirects to homepage
	@RequestMapping("/complete-booking")
	public String completeBooking(@RequestParam(name = "name") String customerName,
			@RequestParam(name = "email") String customerEmail, @RequestParam(name = "phone") String customerPhone,
			@ModelAttribute("bill") BillDTO bill, @RequestParam(name = "roomId") Integer roomId,
			@RequestParam(name = "checkin-date") String ci, @RequestParam(name = "checkout-date") String co,
			@RequestParam(name = "nights") Integer nights, @RequestParam(name = "guests") Integer guests,
			@RequestParam(name = "rooms") Integer rooms, @RequestParam(name = "note") String note,
			@RequestParam(name = "totalPrice") double totalPrice) {
		LocalDate checkinDate = bookingService.toLocalDate(ci);
		LocalDate checkoutDate = bookingService.toLocalDate(co);
		RoomDTO roomDTO = roomService.getById(roomId);
		BillDTO billDTO = new BillDTO(roomDTO, checkinDate, checkoutDate, nights, rooms, guests, totalPrice, note,
				"Chua thanh toan");
		CustomerDTO customerDTO = new CustomerDTO(customerName, customerEmail, customerPhone);
		customerBillService.saveNewCustomerBill(customerDTO, billDTO);
		roomService.updateRoomAfterBookingSuccessful(roomDTO, billDTO);
		return "redirect:/successful-booking";
	}

	// check name input
	@RequestMapping("/check-name-input")
	@ResponseBody
	public boolean checkNameInput(@RequestParam("name") String name) {
		if (validator.isNameValid(name)) {
			return true;
		}
		return false;
	}

	// check user input
	@RequestMapping("/check-email-input")
	@ResponseBody
	public boolean checkEmailInput(@RequestParam("email") String email) {
		if (validator.isEmailValid(email)) {
			return true;
		}
		return false;
	}

	// check phone input
	@RequestMapping("/check-phone-input")
	@ResponseBody
	public boolean checkPhoneInput(@RequestParam("phone") String phone) {
		if (validator.isPhoneValid(phone)) {
			return true;
		}
		return false;
	}

}
