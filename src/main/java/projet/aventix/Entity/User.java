package projet.aventix.Entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


@Entity
@Table(name="user")
public class User {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY) 
	private Integer id;
	@Column(nullable=true)
	private String siret;
	private String matricule;
	@NotNull
	private String mail;
	@Column(name="mot_de_passe")
	@NotNull
	private String motDePasse;
	
	
	@ManyToOne
	@JoinColumn(name="role_id", nullable=false)
	private Role role;
	@Column(name="nom_Entreprise")
	private String nomEntreprise;
	private String domaine;
	private String adresse;
	private String ville;
	private String pays;
	@Column(name="code_postal")
	private Integer codePostal;
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}


	public User(String siret, String matricule, String mail, String motDePasse, 
			Role role, String nomEntreprise, String domaine, String adresse, String ville, String pays, Integer codePostal) {
		super();
		this.siret = siret;
		this.matricule = matricule;
		this.mail = mail;
		this.motDePasse = motDePasse;
		this.role = role;
		this.nomEntreprise = nomEntreprise;
		this.domaine = domaine;
		this.adresse = adresse;
		this.ville = ville;
		this.pays = pays;
		this.codePostal = codePostal;
		
		
		
		
		
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getSiret() {
		return siret;
	}


	public void setSiret(String siret) {
		this.siret = siret;
	}


	public String getMatricule() {
		return matricule;
	}


	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}


	public String getMail() {
		return mail;
	}


	public void setMail(String mail) {
		this.mail = mail;
	}


	public String getMotDePasse() {
		return motDePasse;
	}


	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}


	public Role getRole() {
		return role;
	}


	public void setRole(Role role) {
		this.role = role;
	}
	
	public String getNomEntreprise() {
		return nomEntreprise;
	}


	public void setNomEntreprise(String nomEntreprise) {
		this.nomEntreprise = nomEntreprise;
	}


	public String getDomaine() {
		return domaine;
	}


	public void setDomaine(String domaine) {
		this.domaine = domaine;
	}


	public String getAdresse() {
		return adresse;
	}


	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}


	public String getVille() {
		return ville;
	}


	public void setVille(String ville) {
		this.ville = ville;
	}


	public String getPays() {
		return pays;
	}


	public void setPays(String pays) {
		this.pays = pays;
	}


	public Integer getCodePostal() {
		return codePostal;
	}


	public void setCodePostal(Integer codePostal) {
		this.codePostal = codePostal;
	}
	

}
