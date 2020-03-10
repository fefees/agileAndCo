package projet.aventix.DAO;

import  projet.aventix.Entity.User;
import org.springframework.data.jpa.repository.JpaRepository;


public interface UserRepository extends JpaRepository<User, Integer> {
 
	User findByMail(String mail);
	User findById(int id);
} 
