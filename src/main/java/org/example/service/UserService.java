package org.example.service;

import org.example.entity.User;
import org.example.repository.UserRepository;

import java.util.List;

public class UserService {

    private UserRepository repository = new UserRepository();

    public User getUser(Long id) {
        return repository.findById(id);
    }

    public List<User> getAllUsers() {
        return repository.findAll();
    }

    public void createUser(User user) {
        repository.save(user);
    }

    public void updateUser(User user) {
        repository.update(user);
    }

    public void deleteUser(Long id) {
        repository.delete(id);
    }
}
