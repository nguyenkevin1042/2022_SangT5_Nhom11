package nmcnpm.web_datphong.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "category_id")
	private int ID;
	private String name;
	private String code;
	private String size;
	@OneToMany(mappedBy = "category", fetch = FetchType.EAGER)
	private List<Room> rooms;

	public Category() {
		  
	  }

	public Category(int iD, String name, String code, String size) {
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

}
