package org.example.service;

import org.example.entity.User;
import org.example.repository.UserRepository;
import org.mindrot.jbcrypt.BCrypt;

import java.util.List;

public class UserService {

    private UserRepository repository = new UserRepository();
    public User findUserByEmail(String email) {
        return repository.findUserByEmail(email);
    }
    public User getUser(Long id) {
        return repository.findById(id);
    }

    public List<User> getAllUsers() {
        return repository.findAll();
    }

    public void createUser(User user) {
        String hashedPassword = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
        user.setPassword(hashedPassword);
        repository.save(user);
    }

    public void updateUser(User user) {
        repository.update(user);
    }

    public void deleteUser(Long id) {
        repository.delete(id);
    }
    public boolean checkPassword(String plainPassword, String hashedPassword) {
        return BCrypt.checkpw(plainPassword, hashedPassword);
    }

}
