package projet.aventix.Entity;


import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity
public class Role{
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) 
	private Integer id;
	
	private String fonction;
	
	@OneToMany(mappedBy = "role")
	private List<User> user;
	

	/*public Role() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Role(String fonction) {
		super();
		this.fonction = fonction;
	}*/

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFonction() {
		return fonction;
	}

	public void setFonction(String fonction) {
		this.fonction = fonction;
	}

	public List<User> getUser() {
		return user;
	}

	public void setUser(List<User> user) {
		this.user = user;
	}

	
	
	
	
	
	
	
}
