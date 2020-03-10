package projet.aventix.Controller;

import projet.aventix.DAO.RoleRepository;
import projet.aventix.DAO.UserRepository;
import projet.aventix.Entity.Role;
import projet.aventix.Entity.User;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class UserController {
	
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private RoleRepository roleRepository;
	
	 @RequestMapping(value="/")
	public String index() {
		return "accueil"; 
	}
	 
	 
	 
	 @RequestMapping(value="/connexion", method = RequestMethod.GET)
		public String connexion() {
			return "connexion"; 
		}
	 
	 @RequestMapping(value="/admin", method = RequestMethod.GET)
		public String admin() {
			return "admin"; 
		}
	 
	 @RequestMapping(value="/employeur", method = RequestMethod.GET)
		public String employeur() {
			return "employeur"; 
		}
	 
	 @RequestMapping(value="/employe", method = RequestMethod.GET)
		public String employe() {
			return "employe"; 
		}
	 
	 @RequestMapping(value="/new_compte", method = RequestMethod.GET)
		public String nouvecompteemployeur(Model model) {
		 	
		 	model.addAttribute("user", new User());
		 	
			return "new_compte"; 
		}
	 
	 @RequestMapping(value="/new_compte", method = RequestMethod.POST)
		public String savenouvecompteemployeur(Model model, @Valid User user) {
		 	
		 	System.out.println("Nom entreprise: "+user.getNomEntreprise());
		 	Role role= roleRepository.findById(2);
		 	user.setRole(role);
		 	userRepository.save(user);
		 	
			return "connexion"; 
		}
	 
	 @RequestMapping(value="/connexionverif")
		public String verification(@RequestParam(value="login")String login, 
				@RequestParam(value="pwd")String password) {
		 System.out.println("login: "+login+ " password: "+password);
		 
		 //User user= new User();
		 User user= userRepository.findByMail(login);
		 //User user= userRepository.findById(7);
		 System.out.println("login: "+user.getMail()+" mot de passe: "+user.getMotDePasse()+" role: "+user.getRole().getId());
		// System.out.println("id role: "+user.getRole().getId());
		 
		
		 if(user!=null) {
			 if(user.getMotDePasse().equals(password) && user.getRole().getId()==1) {
				//System.out.println("id role: "+user.getRole().getId());
				 return "redirect:/admin";
		 }
			 else if (user.getMotDePasse().equals(password) && user.getRole().getId()==2) {
				 return "redirect:/employeur";
			 }
			 
			 else if (user.getMotDePasse().equals(password) && user.getRole().getId()==3) {
				 return "redirect:/employe";
			 }else {
				 
			return "connexion"; 
			 }
		 }		
		
		return "connexion";		 
	 
	 }
	 
	
	 

}
