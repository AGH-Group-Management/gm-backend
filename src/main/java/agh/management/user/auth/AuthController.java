package agh.management.user.auth;

import agh.management.user.User;
import agh.management.user.UserRepository;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.Base64;

class Credentials{
    String userName;
    String password;

    public Credentials(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }
}
@RestController
@CrossOrigin
public class AuthController {

    final
    UserRepository userRepository;

    public AuthController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @RequestMapping("/login")
    public User login(@RequestBody Credentials credentials ) {
        User user1 = userRepository.findByEmail(credentials.userName);
        if (user1.getPassword().equals(credentials.password)) {
            return user1;
        }
        return null;
    }

    @RequestMapping("/user")
    public Principal user(HttpServletRequest request) {
        String authToken = request.getHeader("Authorization")
                .substring("Basic".length()).trim();
        return () ->  new String(Base64.getDecoder()
                .decode(authToken)).split(":")[0];
    }
}
