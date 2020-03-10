package projet.aventix;

//import projet.aventix.Entity.User;

//import projet.aventix.DAO.UserRepository;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class AventixApplication {

	public static void main(String[] args) {
	//ApplicationContext ctx=	
			SpringApplication.run(AventixApplication.class, args);
	//UserRepository userRepository=ctx.getBean(UserRepository.class);
	//userRepository.save(new User(1000, "az30", "said@gmail.com", "blabla"));
	//userRepository.save(new User(2000, "az40", "fango@gmail.com", "plapla"));
	//userRepository.save(new User(3000, "az50", "alag@gmail.com", "ablaabla"));
		
		
		//userRepository.findAll().forEach(u->System.out.println(u.getMail()));

	
	}

}
