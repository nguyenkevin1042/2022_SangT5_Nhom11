package nmcnpm.web_datphong.dto;

public class CustomerDTO {
	private int ID;
	private String name;
	private String email;
	private String phone;
	
	public CustomerDTO() {
		
	}
	
	public CustomerDTO(String name, String email, String phone) {
		this.name = name;
		this.email = email;
		this.phone = phone;
	}
	
	public CustomerDTO(int iD, String name, String email, String phone) {
		ID = iD;
		this.name = name;
		this.email = email;
		this.phone = phone;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	

}
