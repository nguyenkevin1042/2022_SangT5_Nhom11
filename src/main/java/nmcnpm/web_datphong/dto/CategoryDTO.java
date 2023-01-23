package nmcnpm.web_datphong.dto;

public class CategoryDTO {
	private int ID;
	private int name;
	private int code;
	private int size;
	
	public CategoryDTO(int iD, int name, int code, int size) {
		ID = iD;
		this.name = name;
		this.code = code;
		this.size = size;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getName() {
		return name;
	}
	public void setName(int name) {
		this.name = name;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}	
	
}
