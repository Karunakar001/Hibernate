package dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import net.bytebuddy.utility.nullability.NeverNull;

@Entity
@Table(name="Customer_Table")
public class Customer {

	@Id @NeverNull @Column(name="Customer_id") @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NeverNull @Column(name="Customer_name")
	private String name;
	
	@NeverNull @Column(name="Customer_mail")
	private String mail;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}
}
