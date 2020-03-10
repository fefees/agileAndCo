package projet.aventix.DAO;

import projet.aventix.Entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Integer> {
	Role findById(int id);
}
